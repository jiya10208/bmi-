

<a name="readme-top"></a>
<div >

  <h1 align="center" >BMI Calculator App</h1>


<!-- Badges -->
<p align="center">
  <p>
  <a href="https://github.com/jiya10208/bmi-/graphs/contributors">
    <img src="https://github.com/jiya10208/bmi-/blob/main/images/input_page.png" alt="" width=280vw />
  </a>
  <a href="">
    <img src="https://github.com/jiya10208/bmi-/blob/main/images/result_page.png" alt="last update" width=280vw  />
  </a>
  </p>
  <a href="https://github.com/jiya10208/bmi-">
    <img src="https://img.shields.io/github/forks/ladunjexa/bmi-calculator-app" alt="forks" />
  </a>
  <a href="https://github.com/jiya10208/bmi-">
    <img src="https://img.shields.io/github/stars/ladunjexa/bmi-calculator-app" alt="stars" />
  </a>
  <a href="https://github.com/jiya10208/bmi-">
    <img src="https://img.shields.io/github/issues/ladunjexa/bmi-calculator-app" alt="open issues" />
  </a>
  <a href="https://github.com/jiya10208/bmi-">
    <img src="https://img.shields.io/github/license/ladunjexa/bmi-calculator-app.svg" alt="license" />
  </a>
</p>
     
<div align="justify">
<h2 align="justify">Our Goal</h2>
<p>The objective of this tutorial is to look at how we can customise Flutter Widgets to achieve our own beautiful user interface designs. If you have a designer on board, no matter how unconventional their designs are, we can create them using Flutter.
</p> 
</div>
<br />

  
  <p>
    An BMI Calculator App that measures your Body Mass Index with decimal precision!
  </p>
<p>
  <h2>What do we learn</h2>
  <li>How to use Flutter themes to create coherent branding.
  </li>
      <li>How to create multi-page apps using Flutter Routes and Navigator.
  </li>
    <li>How to extract and refactor Flutter Widgets with a click of the button.
  </li>
    <li>How to pass functions as parameters and fields.
  </li>
    <li>How to use the GestureDetector Widget to detect more than just a tap.
  </li>  <li>How to use custom colour palettes by using hex codes.
  </li>  <li>How to customise Flutter Widgets to achieve a specific design style.
  </li>  <li>Understand Dart Enums and the Ternary Operator.
  </li>  <li>Learn about composition vs. inheritance and the Flutter way of creating custom UI.
  </li>  <li>Understand the difference between const and final in Dart and when to use each.
  </li>
</p>


 <h4>
    <a href="https://github.com/jiya10208/bmi-/">View Demo</a>
  <span> · </span>
    <a href="https://github.com/jiya10208/bmi-">Documentation</a>
  <span> · </span>
    <a href="https://github.com/jiya10208/bmi-">Report Bug</a>
  <span> · </span>
    <a href="https://github.com/jiya10208/bmi-">Request Feature</a>
  </h4>
</div>

<br />

<!-- Table of Contents -->
<details>

<summary>

# :notebook_with_decorative_cover: Table of Contents

</summary>


</details>  

<!-- About the Project -->
## :star2: About the Project

<div align="center"> 
  <img src="readme_assets/input_page.png" height="auto" width="30%" />
  <img src="readme_assets/result_page.png" height="auto" width="30%" />
</div>
<br />
BMI Calculator App is an Body Mass Index (BMI) calculator that measures your BMI table with decimal precision based on your height, age and sex using custom widgets in flutter ⚖

<!-- Folder Structure -->
### :bangbang: Folder Structure

Here is the code folder structure.
```
bmicalc/
|- android
|- ios
|- lib/
  |-- components/
  |-- screens/
  |-- calculator_brain.dart
  |-- constants.dart
  |-- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

#### components

`bottom_button.dart` - `icon_content.dart` - `reusable_card.dart` - `rounded_icon_button.dart`

This folder houses all the components listed above which they are custom flutter widgets with beautiful customized theme using Composition and Inheritance.

#### screens (activities)

`input_page.dart` - This code implementing the UI (User Interface) of the calculator screen, where the user need to provide necessary information for calculating user's BMI. Take a look of this activity at [About The Project](#star2-about-the-project) section.

`results_page.dart` - This code implementing the UI (User Interface) of the results screen, there the user is shown his BMI, a classification group, a customized message and the standard BMI range. Take a look at this activity at [About The Project](#star2-about-the-project) section.
#### lib

`calculator_brain.dart` - This code implementing the `CalculatorBrain` class, where the necessary calculations and conditionals are performed to provide a result to the user that contains the BMI, group classification and interpretation.

Method for calculating BMI:
```javascript
String calculateBMI() {
  _bmi = weight / pow(height / 100, 2);
  return _bmi.toStringAsFixed(1); // converts this _bmi to a double before computing the string representation, as by toDouble - with exactly {fractionDigits} digits after the decimal point
}
```
Formula for calculating BMI: $\frac{weight}{height^2}$

`constants.dart` - All the application level constants. Specifically, this constants.dart file contains theme classes for app widgets.

<br />

<!-- TechStack -->
### :space_invader: Tech Stack

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Android Studio](https://img.shields.io/badge/Android%20Studio-3DDC84.svg?style=for-the-badge&logo=android-studio&logoColor=white)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Getting Started -->
## 	:toolbox: Getting Started

<!-- Installation -->
### :gear: Installation

#### Step 1:
Download or clone this repo by using the link below:

```bash
 https://github.com/jiya10208/bmi-
```

#### Step 2:

Go to project root and execute the following command in console to get the required dependencies:

```bash
  flutter pub get
```

<!-- Run Locally -->
### :running: Run Locally

Clone the project

```bash
  git clone https://github.com/jiya10208/bmi-
```

Go to the project directory

```bash
  cd bmi-calculator-app
```

Install dependencies

```bash
  flutter pub get
```

Start the application

```bash
  flutter run
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Contributing -->
## :wave: Contributing

Contributions are always welcome!

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

