pragma solidity ^0.8.0;
 contract Test090000 {
    uint256[] a1;
    uint256[] a2;
    uint256 b2;
    uint256 b1;
    uint256 c1;
    uint256 d1;
    uint256 x;
    bytes public b2;
    constructor () public {
        d1 = 1;
        c1 = 2;
        a1 = [b1, b1];
        a2 = [b1, b1];
        x = 0;
        b2 = 'hello';
    }
    fallback () external {
    }
    event Mutate3 ();
}
