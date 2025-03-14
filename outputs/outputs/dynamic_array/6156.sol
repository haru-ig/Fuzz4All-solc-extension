pragma solidity ^0.8.0;
contract Test90007b {
    uint256[] a1;
    uint256[] b1;
    uint256[] b2;
    uint256 c1;
    constructor () public {
        a1 = [c1];
        b1 = [c1];
        b2 = [c1, c1];
        c1 = b1[0];
    }
    fallback () external {
    }
    event Mutate ();
}
