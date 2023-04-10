# Ecommerce Website Api

#### An Api database containing product information and images for an Ecommerce website

#### By Zachary Cipolletta, Stephen Zook & James Provance

## Technologies Used

* C#
* .Net 6
* HTML
* JavaScript
* JSON
* SQL
* EFCore
* Identity
* Authentication

## Description
  This Api was built to be a back end database containing products for another repo: https://github.com/jb24x7/CsharpTeamWeek/tree/main/E-Commerce_website.  This Api contains the products that are fetched from the db and populated on the website.


## Setup/Installation Requirements

1. Clone this repo.
2. Open your terminal (e.g., Terminal or GitBash) and navigate to this project's production directory named "EcommerseAPI".
3. Create a file named ['appsettings.json'] in the production directory (EcommerseAPI) and include a new database connection string. The string should be as follows:
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=localhost;Port=3306[Or-Your-Desired-Port-Number];database=[DATABASE-NAME-HERE];uid=[YOUR-USERNAME-HERE];pwd=[YOUR-PASSWORD-HERE];",
  }
}
Create a database name, update username and password to match the username and password of your computer.
4. Copy the file labeled export3.sql to your desktop. Open MySQL Workbench, under the Administration tab, select Data Import/Restore. Then select the option to Import from Self-Contained File and select the export3.sql file copied to the desktop. Under teh section labeled "Default Target Schema, enter the name of the database you have chosen in appsettings.json.  This will import the db with all the products.  

5. Using Postman users can send POST requests to /api/Products with the body:
  {  
    "brand": ["string"],
    "type": ["string"],
    "name": ["string"],
    "price": [integer],
    "description": ["string]",
    "shortDescription": ["string]",
    "imageLink": ["string"]
  }
8. Users are also able to send a GET request to /api/Products to retrieve products in the database. The db has pagination enabled, so only 10 products will be shown at a time.  To see the next page, enter the query api/products/?pageNumber=[Page-Number-Here]
10. Users are able to update entries in the database by sending a PUT request to: /api/Parks{id} with the body:
  {  
    "productId": {id},
    "brand": ["string"],
    "type": []"string"],
    "location": ["string"],
    "name": ["string"]
  }
11. Users are also able to delete entries by sending a DELETE request to /ap/Products/{id}.

## Known Bugs
*No known bugs at this time.

## License
MIT

Copyright (c) 4/2/2023 Zachary Cipolletta, Stephen Zook & James Provance

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.