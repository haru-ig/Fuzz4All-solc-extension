pragma solidity ^0.8.0;
contract Test8 {
    string[] x;
    bytes[] y;
    constructor() public {
    	x.push("Hello");
    	y[1] = keccak256("Hello");
    }
}
