pragma solidity ^0.8.0;

contract Test090009 {
    uint256[] a1;
    uint256[] a2;
    constructor () public {
        a1 = [0];
        a2 = [0];
    }
    fallback () external {
    }
    event Mutate20 ();
}
