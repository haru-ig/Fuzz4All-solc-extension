pragma solidity ^0.8.0;
contract test279 {
    bool[] a;
    bool[5] b;
    function test(uint _b) public {
        while ((_b + 1) < 9) a[(_b + 1)] = false;
        while (_b > 9) a[5] = true;
        while (_b > 8) b[8] = true;
    }
}
