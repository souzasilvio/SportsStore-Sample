using System.ComponentModel.DataAnnotations;
namespace SportsStore.Models.ViewModels
{
    public class CreateUserModel
    {
        [Required]
        public string Name { get; set; }

        [Required]
        [UIHint("password")]
        public string Password { get; set; }

        [Required]
        public string Email { get; set; }

        public string ReturnUrl { get; set; } = "/";
    }
}