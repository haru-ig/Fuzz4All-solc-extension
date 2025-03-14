pragma solidity ^0.8.0;
contract C {
    uint256[2][] b1;
    constructor (uint256[2][] memory value) public {
        b1[0].push(0);
        b1[0].push(0);
        b1[1].push(0);
        b1[1].push(0);
        b1 = value;
    }
}
