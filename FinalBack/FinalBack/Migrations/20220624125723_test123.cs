using Microsoft.EntityFrameworkCore.Migrations;

namespace FinalBack.Migrations
{
    public partial class test123 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_BasketItem_AspNetUsers_AppUserId",
                table: "BasketItem");

            migrationBuilder.DropForeignKey(
                name: "FK_BasketItem_ProductSizeColors_ProductSizeColorId",
                table: "BasketItem");

            migrationBuilder.DropForeignKey(
                name: "FK_Order_AspNetUsers_AppUserId",
                table: "Order");

            migrationBuilder.DropForeignKey(
                name: "FK_Order_Status_StatusId",
                table: "Order");

            migrationBuilder.DropForeignKey(
                name: "FK_OrderItem_AspNetUsers_AppUserId",
                table: "OrderItem");

            migrationBuilder.DropForeignKey(
                name: "FK_OrderItem_Order_OrderId",
                table: "OrderItem");

            migrationBuilder.DropForeignKey(
                name: "FK_OrderItem_ProductSizeColors_ProductSizeColorId",
                table: "OrderItem");

            migrationBuilder.DropForeignKey(
                name: "FK_WishlistItem_AspNetUsers_AppUserId",
                table: "WishlistItem");

            migrationBuilder.DropForeignKey(
                name: "FK_WishlistItem_ProductColors_ProductColorId",
                table: "WishlistItem");

            migrationBuilder.DropPrimaryKey(
                name: "PK_WishlistItem",
                table: "WishlistItem");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Status",
                table: "Status");

            migrationBuilder.DropPrimaryKey(
                name: "PK_OrderItem",
                table: "OrderItem");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Order",
                table: "Order");

            migrationBuilder.DropPrimaryKey(
                name: "PK_BasketItem",
                table: "BasketItem");

            migrationBuilder.RenameTable(
                name: "WishlistItem",
                newName: "WishlistItems");

            migrationBuilder.RenameTable(
                name: "Status",
                newName: "Statuses");

            migrationBuilder.RenameTable(
                name: "OrderItem",
                newName: "OrderItems");

            migrationBuilder.RenameTable(
                name: "Order",
                newName: "Orders");

            migrationBuilder.RenameTable(
                name: "BasketItem",
                newName: "BasketItems");

            migrationBuilder.RenameIndex(
                name: "IX_WishlistItem_ProductColorId",
                table: "WishlistItems",
                newName: "IX_WishlistItems_ProductColorId");

            migrationBuilder.RenameIndex(
                name: "IX_WishlistItem_AppUserId",
                table: "WishlistItems",
                newName: "IX_WishlistItems_AppUserId");

            migrationBuilder.RenameIndex(
                name: "IX_OrderItem_ProductSizeColorId",
                table: "OrderItems",
                newName: "IX_OrderItems_ProductSizeColorId");

            migrationBuilder.RenameIndex(
                name: "IX_OrderItem_OrderId",
                table: "OrderItems",
                newName: "IX_OrderItems_OrderId");

            migrationBuilder.RenameIndex(
                name: "IX_OrderItem_AppUserId",
                table: "OrderItems",
                newName: "IX_OrderItems_AppUserId");

            migrationBuilder.RenameIndex(
                name: "IX_Order_StatusId",
                table: "Orders",
                newName: "IX_Orders_StatusId");

            migrationBuilder.RenameIndex(
                name: "IX_Order_AppUserId",
                table: "Orders",
                newName: "IX_Orders_AppUserId");

            migrationBuilder.RenameIndex(
                name: "IX_BasketItem_ProductSizeColorId",
                table: "BasketItems",
                newName: "IX_BasketItems_ProductSizeColorId");

            migrationBuilder.RenameIndex(
                name: "IX_BasketItem_AppUserId",
                table: "BasketItems",
                newName: "IX_BasketItems_AppUserId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_WishlistItems",
                table: "WishlistItems",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Statuses",
                table: "Statuses",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_OrderItems",
                table: "OrderItems",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Orders",
                table: "Orders",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_BasketItems",
                table: "BasketItems",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_BasketItems_AspNetUsers_AppUserId",
                table: "BasketItems",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_BasketItems_ProductSizeColors_ProductSizeColorId",
                table: "BasketItems",
                column: "ProductSizeColorId",
                principalTable: "ProductSizeColors",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_OrderItems_AspNetUsers_AppUserId",
                table: "OrderItems",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_OrderItems_Orders_OrderId",
                table: "OrderItems",
                column: "OrderId",
                principalTable: "Orders",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_OrderItems_ProductSizeColors_ProductSizeColorId",
                table: "OrderItems",
                column: "ProductSizeColorId",
                principalTable: "ProductSizeColors",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Orders_AspNetUsers_AppUserId",
                table: "Orders",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Orders_Statuses_StatusId",
                table: "Orders",
                column: "StatusId",
                principalTable: "Statuses",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_WishlistItems_AspNetUsers_AppUserId",
                table: "WishlistItems",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_WishlistItems_ProductColors_ProductColorId",
                table: "WishlistItems",
                column: "ProductColorId",
                principalTable: "ProductColors",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_BasketItems_AspNetUsers_AppUserId",
                table: "BasketItems");

            migrationBuilder.DropForeignKey(
                name: "FK_BasketItems_ProductSizeColors_ProductSizeColorId",
                table: "BasketItems");

            migrationBuilder.DropForeignKey(
                name: "FK_OrderItems_AspNetUsers_AppUserId",
                table: "OrderItems");

            migrationBuilder.DropForeignKey(
                name: "FK_OrderItems_Orders_OrderId",
                table: "OrderItems");

            migrationBuilder.DropForeignKey(
                name: "FK_OrderItems_ProductSizeColors_ProductSizeColorId",
                table: "OrderItems");

            migrationBuilder.DropForeignKey(
                name: "FK_Orders_AspNetUsers_AppUserId",
                table: "Orders");

            migrationBuilder.DropForeignKey(
                name: "FK_Orders_Statuses_StatusId",
                table: "Orders");

            migrationBuilder.DropForeignKey(
                name: "FK_WishlistItems_AspNetUsers_AppUserId",
                table: "WishlistItems");

            migrationBuilder.DropForeignKey(
                name: "FK_WishlistItems_ProductColors_ProductColorId",
                table: "WishlistItems");

            migrationBuilder.DropPrimaryKey(
                name: "PK_WishlistItems",
                table: "WishlistItems");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Statuses",
                table: "Statuses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Orders",
                table: "Orders");

            migrationBuilder.DropPrimaryKey(
                name: "PK_OrderItems",
                table: "OrderItems");

            migrationBuilder.DropPrimaryKey(
                name: "PK_BasketItems",
                table: "BasketItems");

            migrationBuilder.RenameTable(
                name: "WishlistItems",
                newName: "WishlistItem");

            migrationBuilder.RenameTable(
                name: "Statuses",
                newName: "Status");

            migrationBuilder.RenameTable(
                name: "Orders",
                newName: "Order");

            migrationBuilder.RenameTable(
                name: "OrderItems",
                newName: "OrderItem");

            migrationBuilder.RenameTable(
                name: "BasketItems",
                newName: "BasketItem");

            migrationBuilder.RenameIndex(
                name: "IX_WishlistItems_ProductColorId",
                table: "WishlistItem",
                newName: "IX_WishlistItem_ProductColorId");

            migrationBuilder.RenameIndex(
                name: "IX_WishlistItems_AppUserId",
                table: "WishlistItem",
                newName: "IX_WishlistItem_AppUserId");

            migrationBuilder.RenameIndex(
                name: "IX_Orders_StatusId",
                table: "Order",
                newName: "IX_Order_StatusId");

            migrationBuilder.RenameIndex(
                name: "IX_Orders_AppUserId",
                table: "Order",
                newName: "IX_Order_AppUserId");

            migrationBuilder.RenameIndex(
                name: "IX_OrderItems_ProductSizeColorId",
                table: "OrderItem",
                newName: "IX_OrderItem_ProductSizeColorId");

            migrationBuilder.RenameIndex(
                name: "IX_OrderItems_OrderId",
                table: "OrderItem",
                newName: "IX_OrderItem_OrderId");

            migrationBuilder.RenameIndex(
                name: "IX_OrderItems_AppUserId",
                table: "OrderItem",
                newName: "IX_OrderItem_AppUserId");

            migrationBuilder.RenameIndex(
                name: "IX_BasketItems_ProductSizeColorId",
                table: "BasketItem",
                newName: "IX_BasketItem_ProductSizeColorId");

            migrationBuilder.RenameIndex(
                name: "IX_BasketItems_AppUserId",
                table: "BasketItem",
                newName: "IX_BasketItem_AppUserId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_WishlistItem",
                table: "WishlistItem",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Status",
                table: "Status",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Order",
                table: "Order",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_OrderItem",
                table: "OrderItem",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_BasketItem",
                table: "BasketItem",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_BasketItem_AspNetUsers_AppUserId",
                table: "BasketItem",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_BasketItem_ProductSizeColors_ProductSizeColorId",
                table: "BasketItem",
                column: "ProductSizeColorId",
                principalTable: "ProductSizeColors",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Order_AspNetUsers_AppUserId",
                table: "Order",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Order_Status_StatusId",
                table: "Order",
                column: "StatusId",
                principalTable: "Status",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_OrderItem_AspNetUsers_AppUserId",
                table: "OrderItem",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_OrderItem_Order_OrderId",
                table: "OrderItem",
                column: "OrderId",
                principalTable: "Order",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_OrderItem_ProductSizeColors_ProductSizeColorId",
                table: "OrderItem",
                column: "ProductSizeColorId",
                principalTable: "ProductSizeColors",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_WishlistItem_AspNetUsers_AppUserId",
                table: "WishlistItem",
                column: "AppUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_WishlistItem_ProductColors_ProductColorId",
                table: "WishlistItem",
                column: "ProductColorId",
                principalTable: "ProductColors",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
