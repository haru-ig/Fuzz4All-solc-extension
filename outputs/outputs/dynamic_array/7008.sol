pragma solidity ^0.8.0;
contract Test8 {
    bytes32 public foobar;
    bytes128 public bogus;
    constructor() public {
    	foobar[0x0] = keccak256("Hello World");
    	bogus = keccak256(1) << uint(0xffff + 1);
    }
}
