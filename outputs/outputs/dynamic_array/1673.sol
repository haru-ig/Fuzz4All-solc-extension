pragma solidity ^0.8.0;
contract MutatedDynamicArrays10 {
    uint256 x = 10;
    constructor() public {
        x--;
        x -= 1;
    }
    function modify() public {
        x -= 1;
    }
}
