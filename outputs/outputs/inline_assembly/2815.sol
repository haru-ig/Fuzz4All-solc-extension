pragma solidity ^0.8.0;
contract B {
    uint z;
    uint x;
    uint public y;
    constructor(uint _z) public {
        z = _z;
    }
    uint public z_;
    function add() public {
        z_ = uint(z / 100);
        x += z_ / 10;
    }
    function sub() public {
        z -= 0x100;
        z_ = uint(z / 100);
        x += z_ / 10;
    }
}
