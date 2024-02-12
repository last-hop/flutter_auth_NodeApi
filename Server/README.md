
# Node.js API with Authentication and Task Management

This Node.js API provides comprehensive authentication functionalities including signup, signin, and logout using JWT tokens. Additionally, users can efficiently manage tasks through endpoints designed to interact with a MongoDB database. The API ensures secure user authentication and seamless task management, making it suitable for various web applications requiring user authentication and task handling.


## Overview

The API leverages Node.js along with Express.js, a popular web framework for Node.js, to create a robust backend system. MongoDB is used as the database for storing user information and tasks. JSON Web Tokens (JWT) are employed for user authentication, enhancing security by securely transmitting information between parties as a JSON object. This approach eliminates the need for sessions stored on the server, reducing server load and improving scalability.


## Prerequisites

Before using this API, ensure you have the following prerequisites:

    Node.js installed on your system.
    MongoDB account created. Replace the MongoDB connection URI in your .env file with your personal MongoDB connection string.



Example .env file:

MONGODB_URI=your-mongodb-connection-string

JWT_PRIVATE_KEY=your-complex-jwt-private-key
   

   

## Authentication

Signup

The /api/signup endpoint allows users to create new accounts by providing their email and password. Upon successful registration, the API securely stores user credentials in the MongoDB database and generates a unique JWT token for subsequent authentication.




Signin

Users can authenticate themselves through the /api/signin endpoint by providing their registered email and password. Upon successful authentication, the API issues a JWT token that clients can use to access protected routes.

Logout

The /api/logout endpoint enables users to invalidate their JWT token, effectively logging them out of the system. This mechanism enhances security by preventing unauthorized access to protected resources.

## Task Management

Get All Tasks

The /task/tasks endpoint retrieves all tasks stored in the MongoDB database. Users authenticated via JWT tokens can access this endpoint to view their tasks.

Additional Task Management Endpoints

The API can be extended to include additional endpoints for creating, updating, and deleting tasks as per project requirements. These endpoints facilitate comprehensive task management functionality, allowing users to perform CRUD (Create, Read, Update, Delete) operations on tasks.

## Testing with Postman

To test the API with Postman:

    For Signup: Send a POST request to http://localhost:9000/api/signup with the user's email and password in the request body.
    For Signin: Send a POST request to http://localhost:9000/api/signin with the user's email and password in the request body.
    For Logout: Send a GET request to http://localhost:9000/api/logout.

For testing task management endpoints:

    Send a GET request to http://localhost:9000/task/tasks to retrieve all tasks.

## Middleware and Error Handling

The API utilizes appropriate middleware and error handling to enhance security and ensure smooth operation. Middleware functions are employed to handle tasks such as authentication and request parsing, while error handling middleware captures and properly formats errors for client responses.

## Setting Up the API

To set up the API on your computer, follow these steps:

    Clone the Repository:

    Clone the repository to your local machine using the following command:

    bash

     git clone <repository-url>

Navigate to the Project Directory:

Open your terminal or command prompt and navigate to the project directory:

bash

cd nodejs-authentication-task-api

## Install Dependencies:

   Install the required dependencies by running the following command:
   
   npm install

   Set Environment Variables:

   Create a .env file in the root of the project directory and define the following environment variables:

MONGODB_URI=your-mongodb-connection-string

JWT_PRIVATE_KEY=your-complex-jwt-private-key

Replace your-mongodb-connection-string with your MongoDB connection string, and your-complex-jwt-private-key with a secure and complex JWT private key.

## Start the Server:

Start the server by running the following command:

  npm start

   The server should now be running at http://localhost:9000.


Additional Configuration (Optional):

If needed, you can modify the API routes, middleware, or any other aspect of the project to suit your requirements. The project structure is organized to facilitate easy modification and extension.

## License:

This project is licensed under the ABC License. Make sure to review the LICENSE file for details.
