pragma solidity ^0.8.0;
contract MutatedStorage16 {
    uint public num;
    constructor() public {
        num = 0;
    }
    function mutate() public {
        num -= 8345;
    }
    function addZeroOne() public {
        num += 1;
    }
    function modifyNumberBySubtractingTwo() public {
        num = 8345 - num;
    }
}
