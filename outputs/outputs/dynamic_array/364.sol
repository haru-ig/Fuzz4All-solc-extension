pragma solidity ^0.8.0;
contract Ga1 {
    uint56[] private b;
    constructor() public {
        b = new uint56[](3);
        b[1] = b[0];
    }
    function g() public returns(uint256){
        if (b.length < 2) {
            b.length++;
            b[1] = b[0];
            return b[1];
        } else {
            return b[1];
        }
    }
}
