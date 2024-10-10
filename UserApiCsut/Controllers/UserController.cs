﻿using Microsoft.AspNetCore.Mvc;
using UserApiCsut.Models;
using static UserApiCsut.Models.Dto;

namespace UserApiCsut.Controllers
{
    [Route("users")]
    [ApiController]
    public class UserController : ControllerBase
    {
        [HttpGet]
        public ActionResult<User> Get()
        {
            using (var context = new UserDbContext())
            {
                return Ok(context.NewUsers.ToList());
            }
        }

        [HttpPost]
        public ActionResult<User> Post([FromBody] CreateUserDto createUserDto)
        {
            using (var context = new UserDbContext())
            {
                var user = new User
                {
                    Id = Guid.NewGuid(),
                    Name = createUserDto.Name,
                    Age = createUserDto.Age,
                    License = createUserDto.License
                };

                if (user != null)
                {
                    context.NewUsers.Add(user);
                    context.SaveChanges();
                    return StatusCode(201, user);
                }

                return BadRequest();

            }
        }

        [HttpPut]
        public ActionResult<User> Put(Guid id, UpdateUserDto updateUserDto)
        {
            using (var context = new UserDbContext())
            {
                var existingUser = context.NewUsers.FirstOrDefault(x => x.Id == id);

                if (existingUser != null)
                {
                    existingUser.Name = updateUserDto.Name;
                    existingUser.Age = updateUserDto.Age;
                    existingUser.License = updateUserDto.License;

                    context.NewUsers.Update(existingUser);
                    context.SaveChanges();

                    return StatusCode(200, existingUser);
                }

                return NotFound();
            }
        }
    }
}
