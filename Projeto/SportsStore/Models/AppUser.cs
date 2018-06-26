using Microsoft.AspNetCore.Identity;
namespace SportsStore.Models
{
    public class AppUser : IdentityUser
    {
        public AppUser(string nome):base(nome)
        { }
        public AppUser() : base()
        { }

    }
}