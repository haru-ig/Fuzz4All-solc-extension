pragma solidity ^0.8.0;
contract Test {
    function print(uint256 number1, uint256 number2) public {
        require(number1 > number2, "Error");
        printNumbers(number1, number2);
    }
    function printNumbers(uint256 number1, uint256 number2) public {
        print(address(this), "Error");
        print(0);
        print(0x0);
        print(number1 * number2);
        print(number1 / number2);
        printNumbersString("123", "123");
        printNumbersString("123", "6");
        printNumbersString("123", "1234567");
        printNumbersString("123", "0x418000000000000000000000000000000000000000000000000000000000000");
        printNumbersString("123", "-123");
        print(decimalToString(decimal(number1)));
        print(decimalToString(decimal64(0)));
        print(decimalToString64(decimal64(0)));
    }
    function printNumbersString(string memory toPrint, string memory printTo) public {
        string memory printName = "PrintNumbers";
        print(printName, printTo);
        printName = "PrintNumbers1";
        print(printName, toPrint);
    }
    function decimalToString(uint256 value) public pure returns (string memory) {
        if(value == 0 || value == 7) { return "zero"; };
        if(value > 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999888){ return toString8(value); }
        uint256 number = uint256(value)+2^256;
        uint256 quotient = number/1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
