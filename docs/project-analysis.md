# E-commerce Project Technology Analysis

## Project Overview
E-commerce application with React frontend, ASP.NET Core 6 backend, and SQL Server database.

## Frontend Stack

**Core Technologies:**
- **React 18** - Component-based UI framework
- **Create React App** - Development and build tooling
- **Redux Toolkit** - State management
- **React Router DOM** - Client-side routing

**Additional Libraries:**
- **axios** - HTTP client for API communication
- **react-hook-form** - Form handling and validation
- **Sass/SCSS** - CSS preprocessing
- **Font Awesome** - Icon library
- **PayPal SDK** - Payment integration

## Backend Stack

**Core Framework:**
- **ASP.NET Core 6** - Web API framework
- **C#** - Programming language
- **.NET 6 Runtime** - Cross-platform runtime

**Data Access:**
- **ADO.NET** - Direct database access (no ORM)
- **System.Data.SqlClient** - SQL Server connectivity
- **Repository Pattern** - Data access abstraction

**Security & Documentation:**
- **JWT Bearer Authentication** - Token-based auth
- **Swagger/OpenAPI** - API documentation
- **CORS** - Cross-origin request handling
- **Serilog** - Structured logging

## Database Stack

**Database System:**
- **Microsoft SQL Server** - Enterprise RDBMS
- **Docker containerization** - Easy deployment
- **CloudBeaver** - Web-based management interface

**Schema Design:**
- **5 Tables**: USER, PRODUCT, PRODUCT_SIZE, ORDER, ORDER_ITEM
- **Relational design** with foreign key relationships
- **Manual SQL scripts** for table creation and data seeding

## API Design

**RESTful Endpoints:**
```
Authentication: POST /api/user/login
Users: GET|POST|PUT|DELETE /api/user
Products: GET|POST|PUT|DELETE /api/product  
Orders: GET|POST|PUT|DELETE /api/order
Product Sizes: GET|POST|PUT|DELETE /api/productsize
Order Items: GET|POST|PUT|DELETE /api/orderitem
```

**Data Flow:**
```
React App → axios → ASP.NET Core API → ADO.NET → SQL Server
```