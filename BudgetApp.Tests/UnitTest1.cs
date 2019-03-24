using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BudgetApp.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            Class1 cl = new Class1();
            Assert.AreEqual(cl.name, "Haniya");
        }
    }
}
