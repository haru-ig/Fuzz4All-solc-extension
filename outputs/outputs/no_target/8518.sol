pragma solidity ^0.8.0;
contract Equivalent {
    Equivalent a;
    Equivalent b;
    Equivalent c;
    constructor(uint[5] memory _value1, uint _value2, uint[16] memory _value3) public {
        c.a = _value1;
        c.b = _value2;
        c.set(3, 7, 11, 15, 19);
    }
    function set(uint[81] memory, uint, uint[23] memory, uint, uint[1] memory) public {
        c.set(8, 16, 24, 32);
    }
    function set2(uint[64] memory, uint, uint[12] memory, uint, uint, uint[49] memory, uint[26] memory, uint[10] memory, uint n, uint[39] memory) public {
    }
    function _set(uint _a, uint _b, uint _c, uint _d, uint _e) internal {
        a = Equivalent(uint(keccak256(abi.encode(_a, _b, _c, _d, _e)))));
        b = Equivalent(uint(keccak256(abi.encode(_c, _d, _b, _a, _e)))));
        c = Equivalent(uint(keccak256(abi.encode(_b, _a, _c, _d, _e)))));
    }
}
