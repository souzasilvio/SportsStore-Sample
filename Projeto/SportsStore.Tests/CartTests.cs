﻿using System.Linq;
using SportsStore.Models;
using Xunit;
namespace SportsStore.Tests
{
    public class CartTests
    {
        [Fact]
        public void Can_Add_New_Lines()
        {
            // Arrange - create some test products
            Product p1 = new Product { ProductID = 1, Name = "P1" };
            Product p2 = new Product { ProductID = 2, Name = "P2" };
            // Arrange - create a new cart
            Cart target = new Cart();
            // Act
            target.AddItem(p1, 1);
            target.AddItem(p2, 1);
            CartLine[] results = target.Lines.ToArray();
            // Assert
            Assert.Equal(2, results.Length);
            Assert.Equal(p1, results[0].ProductId);
            Assert.Equal(p2, results[1].ProductId);
        }
    }
}