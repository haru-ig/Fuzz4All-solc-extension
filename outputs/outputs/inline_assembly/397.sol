pragma solidity ^0.8.0;
contract M8 {
    bytes32 public b;
    constructor() {
        b = 1;
    }
    function copy() public {
        bytes memory s;
        s = new bytes(b);
        s[0]= 1;
    }
}
