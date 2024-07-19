/*
the following code is the same as the original
*/

.container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
  background-color: #f2f2f2;
}

.logo {
  width: 200px;
  height: auto;
  margin-right: 20px;
}

.nav {
  display: flex;
  list-style-type: none;
  margin: 0;
  padding: 0;
}

.nav li {
  margin-right: 20px;
}

.nav li a {
  color: #333;
  text-decoration: none;
}

.nav li a hover {
  color: #007bff;
}

%{
    background-color: #f2f2f2;
    padding: 10px;
    border-radius: 5px;


.card-style {
    background-color: #fff;
}

.card {
  @extend %card-style;
}


.card-title {
    font-size: 24px;
}

.card-description {
    font-size: 16px;
}

.card-image {
    width: 100%;
    height: 200px;
    object-fit: cover;
}

.card-actions {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 10px;
}

.card-actions a {
    color: #333;
    text-decoration: none;
}

.card-actions a:hover {
    color: #007bff;
    text-decoration: underline;
}

.pagination {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
}

.pagination a {
    color: #333;
    text-decoration: none;
    margin-right: 5px;
}

.pagination a.active {
    color: #007bff;
    text-decoration: underline;
}

.pagination a:hover {
    color: #007bff;
    text-decoration: underline;
}

.search-bar {
    width: 300px;
    padding: 10px;
    border-radius: 5px;
}

.search-bar input {
    width: 100%;
    padding: 5px;
    border: none;
}

.search-bar input:focus {
    outline: none;
    border: 1px solid #007bff;
}

.filter-bar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 20px;
}

.filter-bar select {
    padding: 5px;
    border-radius: 5px;
}

.filter-bar button {
    padding: 5px 10px;
    border-radius: 5px;
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
}

.filter-bar button:hover {
    background-color: #0069d9;
}

.sort-bar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 20px;
}

.sort-bar select {
    padding: 5px;
    border-radius: 5px;
}

.sort-bar button {
    padding: 5px 10px;
    border-radius: 5px;
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
}


.sort-bar button:hover {
    background-color: #0069d9;
}

.loading {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: rgba(255, 255, 255,
    0.5);
}

.loading img {
    width: 60px;
    height: auto;
}

@media (max-width: 768px) {
   .container {

    }

   .logo {
        width: 100%;
        height: auto;     
   }
%}