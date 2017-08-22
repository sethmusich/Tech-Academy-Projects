using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace PapaBobs.Persistence
{
    public class OrderRepository
    {
        public static void CreateOrder(DTO.OrderDTO orderDTO)
        {
            var db = new PapaBobsDbEntities();

            var order = convertToEntity(orderDTO);
            db.OrdersTables.Add(order);
            db.SaveChanges(); 
            
        }

        private static OrdersTable convertToEntity(DTO.OrderDTO orderDTO)
        {
            var order = new OrdersTable();

            order.OrderId = orderDTO.OrderId;
            order.Size = orderDTO.Size;
            order.Crust = orderDTO.Crust;
            order.Sausage = orderDTO.Sausage;
            order.Pepperoni = orderDTO.Pepperoni;
            order.Onions = orderDTO.Onions;
            order.Green_Peppers_ = orderDTO.Green_Peppers_;
            order.Name = orderDTO.Name;
            order.Address = orderDTO.Address;
            order.Phone = orderDTO.Phone;
            order.Zip = orderDTO.Zip;
            order.TotalCost = orderDTO.TotalCost;
            order.PaymentType = orderDTO.PaymentType;
            order.Completed = orderDTO.Completed;

            return order;
        }

      
        public static List<DTO.OrderDTO> GetOrders()
        {
            var db = new PapaBobsDbEntities();
            var orders = db.OrdersTables.Where(p => p.Completed == true).ToList();

            var ordersDTO = convertToDTO(orders);
            return ordersDTO;
        }

        private static List<DTO.OrderDTO> convertToDTO(List<OrdersTable> orders)
        {
            var ordersDTO = new List<DTO.OrderDTO>();

            foreach (var order in orders)
            {
                var orderDTO = new DTO.OrderDTO();
                orderDTO.OrderId = order.OrderId;
                orderDTO.Crust = order.Crust;
                orderDTO.Size = order.Size;
                orderDTO.Name = order.Name;
                orderDTO.Address = order.Address;
                orderDTO.Zip = order.Zip;
                orderDTO.Phone = order.Phone;
                orderDTO.Sausage = order.Sausage;
                orderDTO.Pepperoni = order.Pepperoni;
                orderDTO.Onions = order.Onions;
                orderDTO.Green_Peppers_ = order.Green_Peppers_;
                orderDTO.PaymentType = order.PaymentType;
                orderDTO.Completed = order.Completed;
                orderDTO.TotalCost = order.TotalCost;

                ordersDTO.Add(orderDTO);
            }
            return ordersDTO;
        }

        public static void CompleteOrder(Guid orderId)
        {
            var db = new PapaBobsDbEntities();
            var order = db.OrdersTables.FirstOrDefault(p => p.OrderId == orderId);
            order.Completed = true;
            db.SaveChanges();
        }

    }
}
