pragma solidity ^0.8.0;
contract HelloWorld1 is HelloWorld2 {
    function multiplyByConstantValue(uint valueValue) public {
        a = a + valueValue;
        b = 6 * b;
    }
}
