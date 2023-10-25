# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 \[Vet clinic database\] ](#-vet-clinic-database-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [❓ FAQ ](#-faq-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [Vet clinic database] <a name="about-project"></a>

**[Vet clinic database]** use a relational database to create the data structure for a vet clinic

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **[Store data]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:


```sh
 sudo apt install postgresql postgresql-contrib
```

### Setup

Clone this repository to your desired folder:

``` sh
    git clone https://github.com/sagieramos/vet-clinic-database
```

### Install

Install this project with:

``` sh
    sudo -i -u postgres
    git clone https://github.com/sagieramos/vet-clinic-database
    cd vet-clinic-database
```

### Usage

To run the project, execute the following command:

```sh
  psql -f schema.sql -f data.sql -f queries.sql
```

### Run tests

To run tests, run the following command:

```sh
  psql
  SELECT * FROM vet-clinic ;
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Authors <a name="authors"></a>

👤 **Stanley Osagie Ramos**
- GitHub: [@sagieramos](https://github.com/sagieramos)
- Twitter: [@sagieramos](https://twitter.com/sagieramos)
- LinkedIn: [LinkedIn](https://linkedin.com/in/sagieramos)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[More quaries]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/sagieramos/vet-clinic-database/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## ⭐️ Show your support <a name="support"></a>

If you like this project, please stay tune for more features

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Jehovah God
- [Microverse Team](https://www.microverse.org/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **[How do I create a new PostgreSQL database?]**

  - [ou can create a new PostgreSQL database using the SQL command: CREATE DATABASE database_name;]

- **[What is the purpose of the \c command in PostgreSQL?]**

  - [The \c command is used to connect to a specific database in PostgreSQL, allowing you to work within that database.]

- **[What's the SQL command for inserting data into a table?]**
  - [You can insert data into a table using the SQL command: INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);]

- **[How can I run SQL queries to retrieve data from a PostgreSQL database?]**
  - [You can run SQL queries in PostgreSQL using the psql command-line interface or through application code.]
  
- **[How can I view all tables in a PostgreSQL database?]**
  - [You can use the SQL command: \dt or \dt+ in psql to view all tables in the current database.]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
