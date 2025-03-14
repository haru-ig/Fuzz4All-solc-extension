pragma solidity ^0.8.0;
contract L73Semantic {
    uint[3] x;
    function sneaky() public {
        if (true) {
            x[2] += 1;
            x[1] = int(uint256(uint(x[0])+x[2]));
        } else {
            x[1] = uint256(uint(x[0])+x[2]);
            x[2] += 2;
        }
    }
