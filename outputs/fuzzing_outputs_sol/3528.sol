pragma solidity ^0.8.0;
contract MutatedStorage8 {
    uint public num;
    constructor() public {
        num = 0;
    }
    function changeNumberAndIncrease() public {
        num += 1;
        num = num + 1;
    }
    function addZeroOne() public {
        num += 1;
        num = num + 1;
        num = num + 1;
    }
}
