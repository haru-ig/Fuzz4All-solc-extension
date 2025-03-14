pragma solidity ^0.8.0;
contract G {
    mapping (uint => uint) x;
    constructor() public {
        x = {1 => 1};
        x = {1 => 1, 2 => 2};
        x = {1 => 1, 2 => 2, 3 => 3};
    }
    function g(uint y) public {
        x = x + y;
    }
}
