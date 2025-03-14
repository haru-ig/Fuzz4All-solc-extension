pragma solidity ^0.8.0;
contract B {
    uint public z;
    uint x;
    constructor(uint _z) public {
        z = _z;
    }
    uint public y;
    function add() public {
        y = z / 10;
        x += y / 100;
    }
    function sub() public {
        z -= 0x100;
        y = z / 10;
        x += y / 100;
    }
}
