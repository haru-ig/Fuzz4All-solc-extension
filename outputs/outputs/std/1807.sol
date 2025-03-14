pragma solidity ^0.8.0;
contract SolidityExample2 {
    uint x = 5;
    mapping(uint => bool) m;
    bool a(uint num) pure internal returns (bool) {
        uint res = 2 * num + 42;
        m[x] = true;
        return res % 13 == 0;
    }
    bool b(uint num) constant pure internal returns (bool) {
        return num % 13 == 0;
    }
    function c() view public returns (bool) {
        return b(x);
    }

}
