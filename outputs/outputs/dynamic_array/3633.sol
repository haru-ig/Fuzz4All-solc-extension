pragma solidity ^0.8.0;
contract C {
    uint256[] x;
    mapping(uint256 => uint256) public b;
    constructor() public {
        x.push(2);
        x[1] = 3;
        x.push(b[x[1]]);
        x[2] = b[x[1]];
    }
}
