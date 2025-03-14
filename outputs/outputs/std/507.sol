pragma solidity ^0.8.0;
contract test {
    uint256 a;
    uint256 b;
    uint256 test;
    uint256 c;
    uint256 d;
    uint256 testOne;
    uint256 testTwo;
    uint256 a1;
    uint x;
    uint256 testOne2;
    uint256 testTwo2;
    constructor () {
        a = 4;
        b = 2;
        test = 0;
        c = a/2;
        d = b/3;
        testOne = 1;
        testTwo = 2;
        a1 = (a + 2*b + 3*c)/4;
        testOne2 = 1 << 8;
        testTwo2 = 2 << 8;
    }
    function add() public view returns (uint256 sum){
        sum = a + b + test + c + (testOne+testTwo*2 + testOne2 + testTwo2)/test + d;
        sum = (b/(1 + (2+d*2)*d));
    }
}
