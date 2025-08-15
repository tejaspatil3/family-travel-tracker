# Family Travel Tracker

A web application to visually track and display the countries visited by different family members on an interactive world map. Each family member is assigned a unique color, and the countries they've visited are highlighted with that color, creating a personalized and shared travel history.

-----

## Features

  * **Add & Manage Family Members**: Easily add new family members to the tracker. Each member is automatically assigned a unique color for identification on the map.
  * **Track Visited Countries**: Log the countries visited by each family member.
  * **Interactive World Map**: A visually engaging world map that displays the visited countries, colored according to the family member who visited them.
  * **View All Travels**: See a consolidated list of all family members and the countries they have visited.

-----

## Technologies Used

  * **Frontend**: EJS (Embedded JavaScript templates), CSS
  * **Backend**: Node.js, Express.js
  * **Database**: PostgreSQL
  * **Dependencies**: pg for PostgreSQL connection, express for the web server, body-parser for request handling, and ejs for templating.

-----

## Project Structure

```
└── 📁family-travel-tracker
    └── 📁public
        └── 📁styles
            ├── main.css      // Main stylesheet for the application
            ├── new.css       // Styles for the 'add new' pages
    └── 📁views
        ├── index.ejs     // Main page template (world map and user list)
        ├── new.ejs       // Template for adding a new user/visit
    ├── countries.csv                 // Data file containing country codes
    ├── family_travel_tracker.sql     // Database schema and initial data
    ├── index.js                      // Main server file (Express app logic)
    ├── package.json                  // Project metadata and dependencies
    └── queries.sql                   // Sample SQL queries for database interaction
```

-----

## Setup and Installation

Follow these steps to get the project running on your local machine.

### 1\. Prerequisites

  * Node.js and npm installed.
  * PostgreSQL installed and running.

### 2\. Clone the Repository

```bash
git clone <your-repository-url>
cd family-travel-tracker
```

### 3\. Install Dependencies

Install the required npm packages listed in `package.json`.

```bash
npm install
```

### 4\. Database Setup

1.  Create a new PostgreSQL database.
2.  Open the `family_travel_tracker.sql` file.
3.  Execute the SQL commands in the file against your newly created database. This will create the necessary tables (`users`, `countries`, `visited_countries`) and insert some initial data.
      * You can use a tool like pgAdmin or the command line `psql` to do this:
        ```bash
        psql -U your_postgres_username -d your_database_name -f family_travel_tracker.sql
        ```

### 5\. Configure Database Connection

Open `index.js` and update the database connection details to match your PostgreSQL configuration:

```javascript
const db = new pg.Client({
  user: "your_postgres_username",
  host: "localhost",
  database: "your_database_name",
  password: "your_password",
  port: 5432,
});
```

### 6\. Run the Application

Start the Express server.

```bash
node index.js
```

The application should now be running on `http://localhost:3000`.

-----

## Usage

  * **View the Map**: Navigate to the homepage to see the world map. Countries visited by family members will be colored in.
  * **Add a Family Member**: Click the "Add New User" button, enter the user's name, and select a color.
  * **Add a Visit**: Select a user from the list, choose a country from the dropdown menu, and click "Add" to log their visit. The map will update automatically.
