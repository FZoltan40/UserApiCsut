﻿namespace UserApiCsut.Models
{
    public class Dto
    {
        public record CreateUserDto(string Name, int Age, bool License);
    }
}
