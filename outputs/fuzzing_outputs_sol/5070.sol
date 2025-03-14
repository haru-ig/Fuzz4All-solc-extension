pragma solidity ^0.8.0;
contract Caller {
    uint x;
    constructor() {x = 42;}
    function() external payable {
        x = 42;
    }
    function update() public {x = 42;}
}
