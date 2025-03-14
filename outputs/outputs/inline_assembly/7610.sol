pragma solidity ^0.8.0;
library TestLib {
    function add(uint x, uint y) internal pure returns (uint) {
        return x + y;
    }
}
contract L3{
    function add(uint a, uint b) public pure returns (uint) {
        return TestLib.add(a, b);
    }
}
contract L4 {
    uint public count;
    function f() public {
        count++;
    }
}
contract L5 {
    function f() public returns (address) {
        return new L4();
    }
}
contract L6 {
    uint x;
    bytes32 y;
    uint z;
    byte a;

    constructor(bytes32 _y, uint _z, bytes32 _x, byte _a) public {
        x = _x;
        y = _y;
        z = _z;
        a = _a;
    }

    function add() public {
        z = add(x, y, z);
        a++;
    }

    function sub() public {
        z = subtract(x, y, z);
    }

    function mult() public {
        z = multiply(x, y, z);
    }

    function div() public {
        z = divide(x, y, z);
    }

    function mod() public {
        z = modulo(x, y, z);
    }
}
contract L7 {
    function f() public { }
}
contract L8 {
    uint constant initialx = 0xBABE000000000000;
    uint constant initialy = 0x0000000123456789;
    function f() public pure returns (
