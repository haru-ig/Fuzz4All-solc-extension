pragma solidity ^0.8.0;
contract G {
    mapping (uint => uint) x;
    constructor() public {
        x[0] = 1;
    }
    function g() public {
        x[0] = x[0] + 1;
        x[0] = x[0] + 1;
    }
}
