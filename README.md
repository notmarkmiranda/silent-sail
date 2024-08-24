# **Prop Bet Pool App**

A web application for creating and managing prop bet pools, allowing users to join, make predictions, and track their scores. Built with Ruby on Rails 7.2.1 using ERB templates.

## **Table of Contents**

- [**Prop Bet Pool App**](#prop-bet-pool-app)
  - [**Table of Contents**](#table-of-contents)
  - [**Features**](#features)
  - [**Getting Started**](#getting-started)
    - [**Prerequisites**](#prerequisites)
    - [**Installation**](#installation)
    - [**Database Setup**](#database-setup)
    - [**Running the App**](#running-the-app)
  - [**Usage**](#usage)
  - [**Running Tests**](#running-tests)
  - [**Contributing**](#contributing)
  - [**License**](#license)

## **Features**

- Two-step user registration process
- User authentication and profile management
- Create and manage prop bet pools
- Add questions and options to pools
- User-friendly interface built with ERB templates

## **Getting Started**

### **Prerequisites**

Before you begin, ensure you have the following installed on your machine:

- Ruby (version 3.0.0 or higher)
- Rails (version 7.2.1)
- PostgreSQL (or your preferred database)
- Node.js and Yarn (for managing JavaScript dependencies)

### **Installation**

1. **Clone the repository:**

```bash
git clone https://github.com/yourusername/prop-bet-pool-app.git
cd prop-bet-pool-app
```

2. **Install dependencies:**

```bash
bundle install
yarn install
```

### **Database Setup**

1. **Create and setup the database:**

```bash
rails db:create
rails db:migrate
rails db:seed
```

This will create the database, run migrations, and seed initial data if provided.

### **Running the App**

1. **Start the Rails server:**

```bash
rails server
```

2. **Visit the app in your browser:**

Open your web browser and go to `http://localhost:3000` to see the app in action.

## **Usage**

- **Register a new user:** Follow the two-step registration process to create a new account.
- **Create a pool:** After logging in, create a new prop bet pool and add questions with options.
- **Join a pool:** Users can join existing pools, make predictions, and track their scores.

## **Running Tests**

1. **Run the test suite:**

```bash
bundle exec rspec
```

This will run all the unit, integration, and system tests to ensure the app is functioning correctly.

## **Contributing**

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature-name`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature-name`).
5. Open a pull request.

Please make sure to update tests as appropriate and follow the existing code style.

## **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
