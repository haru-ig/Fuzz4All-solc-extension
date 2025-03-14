pragma solidity ^0.8.0;
contract B {
    uint z;
    uint x;
    uint public y;
    constructor(uint _z) public {
        z = _z;
    }
    function add() public {
        z = 0;
        assembly {
          z := z / 100 -> z
        }
        x += z / 10;
    }
    function sub() public {
        z = 0;
        assembly {
          z := z  -> z + 0x100
        }
        z_ = uint(z / 100);
        x += z_ / 10;
    }
}
