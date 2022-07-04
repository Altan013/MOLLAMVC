using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace FinalBack.Migrations
{
    public partial class ContactAndBlackListTokenTables : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "BlacklistTokens",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Token = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BlacklistTokens", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Contact",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    BannerImage = table.Column<string>(nullable: true),
                    BannerTitle = table.Column<string>(maxLength: 100, nullable: false),
                    BannerDesc = table.Column<string>(maxLength: 100, nullable: false),
                    ContactInformation = table.Column<string>(maxLength: 100, nullable: false),
                    OfficeLocation = table.Column<string>(maxLength: 100, nullable: false),
                    LocationIcon = table.Column<string>(maxLength: 100, nullable: false),
                    Phone = table.Column<string>(maxLength: 100, nullable: false),
                    PhoneIcon = table.Column<string>(maxLength: 100, nullable: false),
                    Mail = table.Column<string>(maxLength: 100, nullable: false),
                    MailIcon = table.Column<string>(maxLength: 100, nullable: false),
                    OpenTime = table.Column<string>(nullable: false),
                    CloseTime = table.Column<string>(nullable: false),
                    OclockIcon = table.Column<string>(maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Contact", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Questions",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    IsAcces = table.Column<bool>(nullable: false),
                    Name = table.Column<string>(maxLength: 50, nullable: false),
                    Phone = table.Column<string>(maxLength: 50, nullable: false),
                    Mail = table.Column<string>(nullable: false),
                    Subject = table.Column<string>(maxLength: 50, nullable: false),
                    Message = table.Column<string>(maxLength: 350, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Questions", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Stores",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(maxLength: 100, nullable: false),
                    Address = table.Column<string>(maxLength: 100, nullable: false),
                    Mail = table.Column<string>(maxLength: 100, nullable: false),
                    StoreOpenTime = table.Column<DateTime>(nullable: false),
                    StoreCloseTime = table.Column<DateTime>(nullable: false),
                    StoreLink = table.Column<string>(maxLength: 120, nullable: false),
                    Phone = table.Column<string>(maxLength: 120, nullable: false),
                    StoreImage = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Stores", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BlacklistTokens");

            migrationBuilder.DropTable(
                name: "Contact");

            migrationBuilder.DropTable(
                name: "Questions");

            migrationBuilder.DropTable(
                name: "Stores");
        }
    }
}
