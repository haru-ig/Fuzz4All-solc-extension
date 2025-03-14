pragma solidity ^0.8.0;
contract Test90007 {
    bytes32[4] public a1;
    constructor () public {
        a1 = [0x01, 0x01, 0x01, 0x01, 0x01, 0x01];
    }
    fallback () external {
    }
    event Mutate ();
}
