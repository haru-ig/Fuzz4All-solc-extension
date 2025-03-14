pragma solidity ^0.8.0;
contract C {
    contract D {
        string name();
    }
    string name;
    uint8[3] public b;
    constructor(contract D _D) public {
        name = _D.name();
    }
}
pragma solidity ^0.8.0;
contract C {
    uint x;
    uint y;
    uint z;
    bool x_;
    bool y_;
    bool z_;
    function doSomething() public {
        x = 42;
        y = 50;
        z = 5L;
        x_ = true;
        y_ = false;
        z_ = false;
        assembly {
            mstore8(0x00, x)
      mstore8(0x01, y)
        mstore8(0x02, z)
            x := mload(0x00)
            y := mload(0x01)
            z := mload(0x02)
            x := and(x, and(x, not(y)))
            x := or(or(or(x, or(y, y)), or(or(x, y), or(z, z))), x)
            x := not(x)
            x := xor(xor(xor(and(x, not(y)), and(x, x)), xor(x, and(x, not(y)))), z)
            x := xor(and(or(x, or(y, z)), xor(x, or(and(x, not(y)), xor(x, x)))), z)
            x := xor(or(xor(and(x, not(y)), and(x, x)), xor(x, and(x, not(y)))), z)
        }
    }
}
