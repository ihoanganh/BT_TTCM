using Demo.Models;

namespace Demo.ModelsView
{
	public class CartItem
	{
		public Menu menu { get; set; }
		public int amount { get; set; }
		public int TotalMoney => amount* menu.Gia;

    }
}
