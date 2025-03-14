pragma solidity ^0.8.0;
contract MutatePos2 {
    uint x;
    uint y;
    address[] addrs;
    constructor() {
        x = 0xDEADBEEF;
        y = 0xABCDABBE;
        addrs[0] = msg.sender;
    }

    function at(uint n) public pure returns (address) {
        return address(uint160(uint256(addrs[n])).add(n*x));
    }
}
