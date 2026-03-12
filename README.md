# DailyCode API

The **DailyCode API** provides access to programming codes used in the **DailyCode** project.
DailyCode is a simple site designed to encourage developers practice **daily code reading**.

## Base URL

```
https://dailycode.page.gd/api
```

Example:

```
https://dailycode.page.gd/api/codes
```

## Authentication

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

If you need a **personal API key**, you can request one by contacting me.

## Endpoints

### Get all codes

Returns all available code snippets.

```
GET /codes
```

Example:

```
GET https://dailycode.page.gd/api/codes
```

---

### Get code by ID

Returns a specific code snippet by its ID.

```
GET /codes/{id}
```

Example:

```
GET /codes/5
```

---

### Get codes by language

Returns code snippets filtered by programming language.

```
GET /codes/language/{language}
```

Example:

```
GET /codes/language/python
```

---

### Get codes by date

Returns code snippets from a specific date.

```
GET /codes/date/{date}
```

Example:

```
GET /codes/date/2026-03-12
```

You can also use the keyword `today` to retrieve the code for the current day:

```
GET /codes/date/today
```

---

## Example Request

```http
GET /codes/date/today HTTP/1.1
Host: dailycode.page.gd
API-KEY: a6d3b618daab8c71
```

---

## Intended Use

The API is intended for:

* Educational platforms
* Coding practice tools
* Programming learning applications
* Integrations with development tools
