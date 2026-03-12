# DailyCode API

The **DailyCode API** provides access to programming codes used in the [DailyCode](https://dailycode.page.gd/) project.

DailyCode is a simple project designed to encourage developers to practice **daily code reading**.

This repository contains everything needed to host the API.
The **database is included in the project and is updated monthly** with new programming code entries.

---

# Installation and Usage

### 1. Clone the repository

```bash
git clone https://github.com/rafssunny/dailycode_api.git
cd dailycode_api
```

---

### 2. Make sure PHP is installed

Check your PHP version:

```bash
php -v
```

PHP **8.0+** is recommended.

---

### 3. Start the local server

From the root of the project, run:

```bash
php -S localhost:8000
```

The API will now be available at:

```
http://localhost:8000/api
```

Example:

```
http://localhost:8000/api/codes
```

---

# Authentication

All requests must include an **API key** in the request header.

```
API-KEY: your_api_key
```

### Public Test Key

A public test key is available for experimentation:

```
API-KEY: a6d3b618daab8c71
```

Limits for the public key:

* **50 requests**
* Every **2 minutes**

---

# Database

The database is included directly in the repository.

It contains the programming codes used by the API and is updated **monthly** with new entries.

Because of this, the API does **not require an external database service**.

---

# Endpoints

## Get all codes

Returns all available code snippets.

```
GET /codes
```

Example:

```
GET http://localhost:8000/api/codes
```

---

## Get code by ID

Returns a specific code snippet by its ID.

```
GET /codes/{id}
```

Example:

```
GET /codes/5
```

---

## Get codes by language

Returns code snippets filtered by programming language.

```
GET /codes/{language}
```

Example:

```
GET /codes/python
```

---

## Get codes by date

Returns code snippets from a specific date.

```
GET /codes/{date}
```

Example:

```
GET /codes/2026-03-12
```

You can also use the keyword `today` to retrieve the code for the current day:

```
GET /codes/today
```

---

# Example Request

```http
GET /codes/today HTTP/1.1
Host: localhost:8000
API-KEY: your_api_key
```

---

# Intended Use

The API is intended for:

* Educational platforms
* Coding practice tools
* Programming learning applications
* Integrations with development tools
