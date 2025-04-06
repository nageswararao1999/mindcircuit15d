<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Calculator – Nageswararao Project</title>
  <style>
    body {
      background-color: #202124;
      color: white;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .calculator {
      background-color: #303134;
      padding: 20px;
      border-radius: 15px;
      box-shadow: 0 0 20px rgba(0,0,0,0.5);
      width: 300px;
    }

    .display {
      background-color: black;
      color: #0f0;
      font-size: 2em;
      padding: 10px;
      border-radius: 10px;
      text-align: right;
      margin-bottom: 20px;
      height: 60px;
      overflow-x: auto;
    }

    .buttons {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 10px;
    }

    .btn {
      padding: 20px;
      font-size: 1.2em;
      background-color: #505050;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      color: white;
      transition: background-color 0.2s ease;
    }

    .btn:hover {
      background-color: #686868;
    }

    .btn.operator {
      background-color: #f57c00;
    }

    .btn.operator:hover {
      background-color: #fb8c00;
    }

    .btn.equal {
      background-color: #0f9d58;
      grid-column: span 2;
    }

    .btn.clear {
      background-color: #d32f2f;
    }

    .btn.zero {
      grid-column: span 2;
    }
  </style>
</head>
<body>

  <div class="calculator">
    <div class="display" id="display">0</div>
    <div class="buttons">
      <button class="btn clear" onclick="clearDisplay()">C</button>
      <button class="btn operator" onclick="appendOperator('/')">÷</button>
      <button class="btn operator" onclick="appendOperator('*')">×</button>
      <button class="btn operator" onclick="appendOperator('-')">−</button>

      <button class="btn" onclick="appendNumber('7')">7</button>
      <button class="btn" onclick="appendNumber('8')">8</button>
      <button class="btn" onclick="appendNumber('9')">9</button>
      <button class="btn operator" onclick="appendOperator('+')">+</button>

      <button class="btn" onclick="appendNumber('4')">4</button>
      <button class="btn" onclick="appendNumber('5')">5</button>
      <button class="btn" onclick="appendNumber('6')">6</button>
      <button class="btn equal" onclick="calculate()">=</button>

      <button class="btn" onclick="appendNumber('1')">1</button>
      <button class="btn" onclick="appendNumber('2')">2</button>
      <button class="btn" onclick="appendNumber('3')">3</button>
      <button class="btn" onclick="appendNumber('.')">.</button>

      <button class="btn zero" onclick="appendNumber('0')">0</button>
    </div>
  </div>

  <script>
    let display = document.getElementById("display");

    function appendNumber(num) {
      if (display.innerText === "0") {
        display.innerText = num;
      } else {
        display.innerText += num;
      }
    }

    function appendOperator(op) {
      const lastChar = display.innerText.slice(-1);
      if ("+-*/".includes(lastChar)) {
        display.innerText = display.innerText.slice(0, -1) + op;
      } else {
        display.innerText += op;
      }
    }

    function clearDisplay() {
      display.innerText = "0";
    }

    function calculate() {
      try {
        display.innerText = eval(display.innerText);
      } catch (e) {
        display.innerText = "Error";
      }
    }
  </script>
</body>
</html>
