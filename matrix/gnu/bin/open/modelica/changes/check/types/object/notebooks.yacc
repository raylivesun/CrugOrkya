/*
the following code is the same as the original
*/

/*
A CSS mixin for creating a responsive navigation bar
*/
@mixin responsive-navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  background-color: #333;
  color: #fff;
  font-size: 16px;

  a {
    color: #fff;
    text-decoration: none;
    padding: 10px;
  }
}

/*
A CSS mixin for creating a responsive dropdown menu
*/
@mixin responsive-dropdown {
  position: relative;

  &:hover .dropdown-content {
    display: block;
  }

  .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0
    0, 0, 0, 0.2);
    z-index: 1;
  }

  .dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
  }

  .dropdown:hover .dropdown-content a {
    background-color: #ddd;
    color: black;
  }

  .dropdown:hover .dropdown:after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
  }
});

/*
A CSS mixin for creating a responsive footer
*/
@mixin responsive-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  background-color: #333;
  color: #fff;
  font-size: 16px;

  a {
    color: #fff;
    text-decoration: none;
    padding: 10px;
  }
  .social-media {
    display: flex;
    justify-content: space-between;
    align-items: center;
    a {
      margin-right: 10px;
      color: #fff;
      text-decoration: none;
    }
    i {
      font-size: 24px;
    }
  }
  .copyright {
    margin-left: auto;
  }
}

/*
The main structure of the website
*/
.container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

.navbar {
  @include responsive-navbar;
}

.dropdown {
    @include responsive-dropdown;
}

.footer {
  @include responsive-footer;
}

/*
A responsive image with a caption
*/
.responsive-image {
  width: 100%;
  height: auto;
  object-fit: cover;
  margin-bottom: 20px;
}

.image-caption {
    font-size: 14px;
    color: #666;
}

/*
A responsive table with alternating row colors and hover effect
*/
.responsive-table {
  width: 100%;
  border-collapse: collapse;
}

.responsive-table th,
.responsive-table td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

.responsive-table th {
    background-color: #f2f2f2;
}

.responsive-table tr hover {
    background-color: #ddd;
}

/*
A responsive form with validation and error handling
*/
.responsive-form {
    width: 100%;
    max-width: 400px;
    margin: 0 auto;
}

.responsive-form label {
    display: block;

    &:after {
        content: ":";
        margin-left: 5px;
    }
    .error {
        color: red;
    }
}

.responsive-form input[type="text"],
.responsive-form input[type="email"],
.responsive-form textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-bottom: 10px;
    resize: vertical;
}

.responsive-form input[type="submit"] {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.responsive-form input[type="submit"] hover {
    background-color: #45a049;
}

.responsive-form .success-message {
    color: green;
    margin-top: 10px;
}

.responsive-form .error-message {
    color: red;
    margin-top: 10px;
}


/*
A responsive grid layout with 3 columns and 2 rows
*/
.responsive-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  grid-gap: 20px;
  margin-bottom: 20px;
}

.responsive-grid img {
  width: 100%;
  height: auto;
  object-fit: cover;
}

/*
A responsive navigation bar with dropdown menu
*/
.navbar-dropdown {
    @include responsive-navbar;

    .dropdown-content {
        position: relative;
        top: -100%;
        left: 0;
    }
}

/*
A responsive footer with social media icons
*/
.footer-social-media {
    @include responsive-footer;

    .social-media {
        a {
            margin-right: 10px;
        }
        i {
            font-size: 32px;
        }
    }
}

/*
A responsive form with validation and error handling using JavaScript
*/
.responsive-form-js {
    width: 100%;
    max-width: 400px;
    margin: 0 auto;
}

.responsive-form-js label {
    display: block;

    &:after {
        content: ":";
        margin-left: 5px;
    }
    .error {
        color: red;
    }
}

.responsive-form-js input[type="text"],
.responsive-form-js input[type="email"],
.responsive-form-js textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-bottom: 10px;
    resize: vertical;
}


.responsive-form-js input[type="submit"] {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.responsive-form-js input[type="submit"] disabled {
    background-color: #ccc;
    cursor: not-allowed;
}

.responsive-form-js.success-message {
    color: green;
    margin-top: 10px;
}

.responsive-form-js.error-message {
    color: red;
    margin-top: 10px;
}

.responsive-form-js.error {
    display: none;
}

.responsive-form-js input[type="text"].error,
.responsive-form-js input[type="email"].error,
.responsive-form-js textarea.error {
    display: block;
}


/*
A responsive navigation bar with dropdown menu and sticky position
*/
.navbar-dropdown-sticky {
    @include responsive-navbar;

    position: sticky;
    top: 0;
    background-color: #333;
    color: #fff;
    z-index: 100;

    a {
        color: #fff;
        text-decoration: none;
        padding: 10px;
    }
    .dropdown-content {
        position: relative;
        top: -100%;
        left: 0;
    }
    .dropdown:hover .dropdown-content {
        display: block;
    }
}

/*
A responsive footer with social media icons and sticky position
*/
.footer-social-media-sticky {
    @include responsive-footer;

    position: sticky;
    bottom: 0;
    background-color: #333;
    color: #fff;
    z-index: 100;

    a {
        color: #fff;
        text-decoration: none;
        padding: 10px;
    }
    .social-media {
        a {
            margin-right: 10px;
            color: #fff;
            text-decoration: none;
        }
        i {
            font-size: 32px;
        }
    }
    .copyright {
        margin-left: auto;
    }
}


/*
A responsive navigation bar with dropdown menu and sticky position with smooth scrolling
*/
.navbar-dropdown-sticky-smooth {
    @include responsive-navbar;

    position: sticky;
    top: 0;
    background-color: #333;
    color: #fff;
    z-index: 100;

    a {

        color: #fff;
        text-decoration: none;
        padding: 10px;
    }
    .dropdown-content {
        position: absolute;
        top: 100%;
        left: 0;
        display: none;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0
        ,0,0,0.2);
        z-index: 1;
    }
    .dropdown:hover .dropdown-content {
        display: block;
    }
}

/*
A responsive footer with social media icons and sticky position with smooth scrolling
*/
.footer-social-media-sticky-smooth {
    @include responsive-footer;

    position: sticky;
    bottom: 0;
    background-color: #333;
    color: #fff;
    z-index: 100;

    a {
        color: #fff;
        text-decoration: none;
        padding: 10px;
    }
    .social-media {
        a {
            margin-right: 10px;
            color: #fff;
            text-decoration: none;
        }
        i {
            font-size: 32px;
        }
    }
    .copyright {
        margin-left: auto;
    }
}

%{
  GLR(notebook):
   .logo {
      height: 30px;
    }
   .nav-links {
     .nav-link {
        margin-right: 20px;
      }
    }
  }
  
  @media (min-width 600px) {
    GLR(notebook):
     .logo {
        height: 40px;
      }
     .nav-links {
       .nav-link {
          margin-right: 30px;
        }
      }
    }
  }

  @media (min-width 900px) {
    GLR(notebook):
     .logo {
        height: 50px;
      }
     .nav-links {
        display: flex;
        justify-content: space-between;
        align-items: center;
        .nav-link {
          margin-right: 40px;
        }
      }
%}
