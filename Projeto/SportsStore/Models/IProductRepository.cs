using System.Linq;
namespace SportsStore.Models
{
    public interface IProductRepository
    {
        IQueryable<Product> Products { get; }

        IQueryable<Category> Categories { get; }

        void SaveProduct(Product product);

        Product DeleteProduct(int productID);
    }
}