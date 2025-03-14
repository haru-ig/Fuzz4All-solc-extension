pragma solidity ^0.8.0;
contract test278 {
    uint a;
    uint[10] b;
    bool[10] c;
    function test(uint _b) public {
        while (_b > 9) b[9] = 10;
        while (_b > 8) c[8] = true;
        while ((a + _b) < 50) a += _b;
    }
}
