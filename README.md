
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

Install Dependencies:

Install the required dependencies by running the following command:

npm install

Set Environment Variables:

Create a .env file in the root of the project directory and define the following environment variables:

vbnet

MONGODB_URI=your-mongodb-connection-string

JWT_PRIVATE_KEY=your-complex-jwt-private-key

Replace your-mongodb-connection-string with your MongoDB connection string, and your-complex-jwt-private-key with a secure and complex JWT private key.

Start the Server:

Start the server by running the following command:

sql

npm start

The server should now be running at http://localhost:9000.

Testing with Postman:

You can now use Postman to test the API endpoints as described in the previous section. Make sure to follow the instructions provided for each endpoint to send the appropriate requests.

Additional Configuration (Optional):

If needed, you can modify the API routes, middleware, or any other aspect of the project to suit your requirements. The project structure is organized to facilitate easy modification and extension.

License:

This project is licensed under the MIT License. Make sure to review the LICENSE file for details.
## Flutter Application for GitHub User Search and Authentication

This Flutter application provides authentication functionalities using Firebase Authentication, allowing users to sign up, sign in, and recover their password. Additionally, the app utilizes the GitHub API to fetch real-time user data and avatars, enabling users to search for GitHub accounts based on their initials in real-time.
## Features

Firebase Authentication: Users can sign up using their name, email, and password, and sign in using their registered email and password. The app also includes a "Forget Password" option for password recovery, which sends a recovery link to the user's registered email.

GitHub API Integration: The app fetches real-time user data and avatars from the GitHub API, allowing users to search for GitHub accounts based on their initials. As the user types in the search bar, a list of users with matching initials is displayed in real-time.
## Usage

Authentication

    Sign Up: Users can sign up by providing their name, email, and password.

    Sign In: Registered users can sign in using their email and password.

    Forget Password: Users can recover their password by requesting a recovery link sent to their registered email.

GitHub User Search

    Real-time Search: As the user types in the search bar, a list of GitHub users with matching initials is displayed in real-time.
## Getting Started
To run the Flutter application:

    Clone the Repository: Clone the repository to your local machine.

    Firebase Setup: Set up Firebase Authentication in your Flutter project by following the instructions provided by Firebase.

    GitHub API Integration: Obtain a GitHub API token and integrate it into your Flutter project to fetch user data and avatars from the GitHub API.

    Run the Application: Run the Flutter application on your device or simulator.
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

Install Dependencies:

Install the required dependencies by running the following command:

npm install

Set Environment Variables:

Create a .env file in the root of the project directory and define the following environment variables:

vbnet

MONGODB_URI=your-mongodb-connection-string

JWT_PRIVATE_KEY=your-complex-jwt-private-key

Replace your-mongodb-connection-string with your MongoDB connection string, and your-complex-jwt-private-key with a secure and complex JWT private key.

Start the Server:

Start the server by running the following command:

sql

npm start

The server should now be running at http://localhost:9000.

Testing with Postman:

You can now use Postman to test the API endpoints as described in the previous section. Make sure to follow the instructions provided for each endpoint to send the appropriate requests.

Additional Configuration (Optional):

If needed, you can modify the API routes, middleware, or any other aspect of the project to suit your requirements. The project structure is organized to facilitate easy modification and extension.

License:

This project is licensed under the MIT License. Make sure to review the LICENSE file for details.
## Running the Flutter Application on 

To run the Flutter application on your mobile device, follow these steps:

    Install Flutter SDK:

    Ensure you have the Flutter SDK installed on your development machine. You can download it from the Flutter website.

    Set Up Mobile Device:

        Android: Enable USB debugging on your Android device by going to Settings > Developer options > USB debugging.

        iOS: Connect your iOS device to your development machine using a USB cable.

    Connect Device:

        Android: Connect your Android device to your development machine using a USB cable.

        iOS: Open your project in Xcode and select your iOS device as the deployment target.

    Run the Application:

    Open a terminal or command prompt, navigate to your Flutter project directory, and run the following command:

    arduino

flutter run

This command builds and runs the Flutter application on your connected mobile device.

Verify Installation:

Once the build process is complete, the Flutter application should launch on your mobile device. You can interact with the application directly on your device to test its functionalities.