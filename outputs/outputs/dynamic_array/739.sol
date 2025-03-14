pragma solidity ^0.8.0;
contract test278 {
    uint256[10] b;
    uint256[9] c;
    function test(uint _b) public {
        while (_b > 9) require(b[9] == 10);
        while (_b > 8) require(c[8] == true);
        while ((a + _b) < 50) a += _b;
    }
    function test2(uint _a) public {
        c[_a] = 11;
    }
}
