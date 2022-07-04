using Microsoft.EntityFrameworkCore.Migrations;

namespace FinalBack.Migrations
{
    public partial class TotalSold : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "TotalSold",
                table: "ProductSizeColors",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "TotalStock",
                table: "ProductSizeColors",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "Subscribers",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Email = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Subscribers", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Subscribers");

            migrationBuilder.DropColumn(
                name: "TotalSold",
                table: "ProductSizeColors");

            migrationBuilder.DropColumn(
                name: "TotalStock",
                table: "ProductSizeColors");
        }
    }
}
