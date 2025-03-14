pragma solidity ^0.8.0;
contract Test90006 {
    uint256[] a1;
    uint256[] a2;
    uint256 b2;
    uint256 b1;
    constructor () public {
        a1 = [b1];
        a2 = [b1, b1];
        a1[0] = b1;
        a2[0] = a1[0];
    }
    fallback () external {
    }
    event Mutate ();
}
