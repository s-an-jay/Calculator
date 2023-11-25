<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
     <style>
            #A
            {

            }
            .calculator {
                width: 350px;
                margin: 0 auto;
                border: 5px solid #ccc;
                padding: 10px;
                border-radius: 20px;
                box-shadow: 2px 2px 5px #888;
                height: 450px;
                margin-top: 100px;
                background: rgb(238,174,202);
    background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(33,71,116,1) 100%);

            }
            .calculator input[type="text"] {
                width: 93%;
                margin-bottom: 10px;
                padding: 10px;
                border-radius: 20px;
                box-shadow:2px 2px 5px #889; 
                font-size: 18px;
                height: 45px;
            }
            .calculator .row {
                display: flex;
                justify-content: space-between;
            }
            .calculator .col {
                flex: 0 0 calc(20% - 10px);
            }
            .calculator .btn {
                margin-top: 17px;
                width: 100%;
                padding: 10px;
                font-size: 18px;
                margin-bottom: 10px;
                 box-shadow:2px 2px 5px #888;
                line-height: 40px;
                border-radius: 100px;
            }
            .calculator .btn.operator {
                background-color: #ff8800;
                color: white;
            }

          body  {
              background: rgb(2,0,36);
    background: radial-gradient(circle, rgba(2,0,36,1) 0%, rgba(37,29,99,1) 47%, rgba(0,212,255,1) 100%);
            }

        </style>
</head>
<body>
    <div id="A">
        <div class="calculator">
            <input type="text" id="display" readonly>
            <div class="row">
                <div class="col"><button class="btn" onclick="appendToDisplay('7')">7</button></div>
                <div class="col"><button class="btn" onclick="appendToDisplay('8')">8</button></div>
                <div class="col"><button class="btn" onclick="appendToDisplay('9')">9</button></div>
                <div class="col"><button class="btn operator" onclick="appendToDisplay('+')">+</button></div>
            </div>
            <div class="row">
                <div class="col"><button class="btn" onclick="appendToDisplay('4')">4</button></div>
                <div class="col"><button class="btn" onclick="appendToDisplay('5')">5</button></div>
                <div class="col"><button class="btn" onclick="appendToDisplay('6')">6</button></div>
                <div class="col"><button class="btn operator" onclick="appendToDisplay('-')">-</button></div>
            </div>
            <div class="row">
                <div class="col"><button class="btn" onclick="appendToDisplay('1')">1</button></div>
                <div class="col"><button class="btn" onclick="appendToDisplay('2')">2</button></div>
                <div class="col"><button class="btn" onclick="appendToDisplay('3')">3</button></div>
                <div class="col"><button class="btn operator" onclick="appendToDisplay('*')">*</button></div>
            </div>
            <div class="row">
                <div class="col"><button class="btn" onclick="clearDisplay()">C</button></div>
                <div class="col"><button class="btn" onclick="appendToDisplay('0')">0</button></div>
                <div class="col"><button class="btn operator" onclick="calculateResult()">=</button></div>
                <div class="col"><button class="btn operator" onclick="appendToDisplay('/')">/</button></div>
            </div>
        </div>
    </div>
    
    <script>
        // JavaScript functions to handle calculator actions
        function appendToDisplay(value) {
            document.getElementById('display').value += value;
        }

        function clearDisplay() {
            document.getElementById('display').value = '';
        }

        function calculateResult() {
            try {
                const result = eval(document.getElementById('display').value);
                document.getElementById('display').value = result;
            } catch (error) {
                document.getElementById('display').value = 'Error';
            }
        }
    </script>
</body>
</html>
