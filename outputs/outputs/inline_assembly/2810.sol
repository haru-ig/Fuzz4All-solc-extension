pragma solidity ^0.8.0;
contract B{
    uint inline private y;

    constructor() public {
        y = 1;
    }

    function add() public {
        x +=y;
    }

    function getY() public view returns (uint) {
        y = 2;
        return y;
    }
}
