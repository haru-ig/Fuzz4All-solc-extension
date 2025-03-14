pragma solidity ^0.8.0;
contract B {
    uint RANGE = 10;
    uint MAX_INTEGER = 100;
    uint constant num1 = 10;
    uint constant num2 = 20;
    uint constant result = 30;

    function getOutputs(uint x) public returns(uint) {
        uint sum = x + (5 * num1) + ((maxInteger / 1000) * num2) + num2 + x * num2 + result;
        return x + sum + 2 + 2 * maxInteger + 2 * num2 + (maxInteger - x) * num2 + result + (result / maxInteger);
    }
}
