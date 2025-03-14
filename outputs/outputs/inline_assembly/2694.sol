pragma solidity ^0.8.0;
contract D {
    constructor() public {
        names++;
        uint constant x = getX();
        uint a;
        assembly {
            a := x + 42
        }
    }
    function getX() public pure returns (uint) {
        return getX();
    }
}
