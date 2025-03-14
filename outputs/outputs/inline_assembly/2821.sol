pragma solidity ^0.8.0;
contract B {
    uint z;
    uint x;
    uint public y;
    uint public z_;
    constructor(uint _z) public {
        z = _z;
    }
    function add() public {
        z_ = uint(z / 100);
        x += z_ / 10;
    }
    function sub() public {
        z -= 0x100;
        z_ = uint(z / 100);
        x += z_ / 10;
    }


    assembly {

        mov rAX, z
        shr rAX, 96

        mload rAX, 97
        sub rAX, rAX, z_

        jr rAX
    }
}
