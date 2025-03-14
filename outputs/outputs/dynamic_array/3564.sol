pragma solidity ^0.8.0;
contract G {
    mapping (uint => uint) x;
    constructor() public {
        x[1] = x[1] + 1;
        x[2] = x[2] + 1;
    }
    function g(uint y) public {
        x[x[y]] = x[x[y]] + 1;
    }
}
