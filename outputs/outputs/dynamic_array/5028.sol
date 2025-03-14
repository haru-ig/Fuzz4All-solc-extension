pragma solidity ^0.8.0;
contract Test9Xx {
    uint256 public x_;
    constructor() {
        x_ = 25u;
    }
    function test1() public pure {
        x_ = 20u;
        (uint256 n) = x_;
        n += 2;
        x_ = 35u;
        (uint256 nm) = x_;
        nm *= 2u;
        n += nm;
        x_ = 1000u;
        (uint256 nn) = x_;
        n *= nn;
    }
    function test2() public pure {
        (uint[10] memory a) = [1,2,3];
        a[6] = 10000u;
        (uint256 j) = a[6];
    }
    function test3() public pure {
        Test9Xx.f_();
    }
}
