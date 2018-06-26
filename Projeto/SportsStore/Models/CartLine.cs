using System.ComponentModel.DataAnnotations.Schema;

namespace SportsStore.Models
{
    [Table("CartLine")]
    public class CartLine
    {
        public int CartLineID { get; set; }
        public Product ProductId { get; set; }
        public int Quantity { get; set; }

    }
}