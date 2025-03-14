pragma solidity ^0.8.0;
contract G {
    mapping (uint => uint) x;
    constructor() public {
    }
    function g() public {
        x[1] = x[1] + g;
    }
}
