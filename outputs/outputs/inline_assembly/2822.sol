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
        x += uint(z - z_ * 100);
    }
    function sub() public {
        z_ = uint(z / 100);
        z -= 0x100;
        x += uint(z - z_ * 100);
    }
}
