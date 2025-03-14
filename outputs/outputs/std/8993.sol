pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arrayTest;
    function increment(uint128 initialValue);
    constructor(uint arrSize) {

        arrayTest = new uint[](1);
        initialValue += uint(8);
        arrayTest[0] = initialValue;
    }
    function increment(uint128 initialValue) public {

        initialValue += uint(7);

        arrayTest.push(initialValue);
    }
}
