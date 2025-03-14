pragma solidity ^0.8.0;
contract B {
    uint z;
    uint x;
    uint public y;
    constructor(uint _z) public {
        z = _z;
    }

    uint public z_;
    function modifyX() public {
        uint old_z = z;
        uint old_x = x;
        uint new_z = uint(z / 100);
        uint new_x = uint(old_x - 0x100);
        z = new_z;
        x = new_x;
        z_ = new_z;
        return new_x;
    }

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
