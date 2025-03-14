pragma solidity ^0.8.0;
 uint256[] a1;
 uint256[] a2;
 uint256 b2;
 uint256 b1;
 uint256 c1;
 contract Test090008 {
    constructor () public {
        a1 = [b1, b1, b1];
        uint256 _ = a1.length;
        a1[3] += 1000000;
        a1.length = 3;
        a1[8] += 1000000000000000000;
    }
    fallback () external {
    }
    event Mutate5 ();
}
contract Test090008 {
uint256[] x1;
uint256[] x2;
uint256[] x3;
 uint256 b2;
 uint256 b1;
 uint256 c1;
 uint256 q1;
 uint256 r1;
constructor () public {

    x1 = [b1];
    x2 = [b1, b1];
    q1 = a1.length;
    uint256 _ = x1.length;
    x1[4] += 1000000;
    x1.length = 4;
    q1 = a1.length;
 }
 fallback () external {
 }
event Mutate6 ();
}
