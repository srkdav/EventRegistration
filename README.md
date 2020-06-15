

<!-- PROJECT SHIELDS -->
<!-- PROJECT LOGO -->
<br />
<p align="center">
 
  <h3 align="center">Event Registration Application</h3>

  <p align="center">
    This application enables the customers to register for a particular event. Additionally, admin has a complete login functionality to monitor and analyse the registrations.  
    <br />
    <a href="https://www.youtube.com/watch?v=AcK3UBwR1XY">View Demo</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Contact](#contact)



<!-- ABOUT THE PROJECT -->
## About The Project

![image](https://user-images.githubusercontent.com/7292607/84664399-1e54e480-af3c-11ea-911c-cfb515c91c8c.png)

### Built With

* Spring MVC
* Java 8
* JavaScript
* MySQL


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

```sh
JDK 1.8 or later
Spring MVC Latest RELEASE 
```

### Installation
 
1. Clone the repo in STS/Eclipse
```sh
git clone https://github.com/github_username/EventRegistration.git
```
2. Add JAR's & modify as :
```sh
2.1)Jar files are provided under libraries folder. Add jar files in   build path and to deployement assembly. How?
- Right click on Project, Build path, configure build path
- Click classpath , add library, user library.
-Create User Libraries as Spring Library and add spring jars provided under "Spring-hibernate-rest-jars" folder to this.
-Similarly, Create Hibernate Libraries as Hibernate Library and add Hibernate jars provided under "Hibernate 5 jars" folder to this.
-Add the remaining jars that were provided similarly.
-Also, on Deployement assembly, add the libraries and jars the were added before.

2.2)Under Java Resources, Hibernate-persistance.xml :
- modify p:url - localhost url,port number, database name in the same format. 
-modify username and password as per your database.

2.3)Finally, modify the app.properties file :
-  change this to the path for storing images locally.

```
<!-- USAGE EXAMPLES -->
## Usage
Preview Page :
![image](https://user-images.githubusercontent.com/7292607/84664293-f1a0cd00-af3b-11ea-9a0b-c318fd7f9291.png)

Final Page:
![image](https://user-images.githubusercontent.com/7292607/84664724-97543c00-af3c-11ea-8ba2-7f2bfe736591.png)

Admin Dashboard Page:
![image](https://user-images.githubusercontent.com/7292607/84664464-36c4ff00-af3c-11ea-8d20-6211e50e059d.png)

Admin Charts:
![image](https://user-images.githubusercontent.com/7292607/84664536-4e9c8300-af3c-11ea-8444-e75f92284037.png)


<!-- CONTACT -->
## Contact

Karthick Sabhapathy - www.linkedin.com/in/karthick-sabhapathy - email


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=flat-square
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=flat-square
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=flat-square
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=flat-square
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=flat-square
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
