pragma solidity ^0.8.0;

contract Test {
    constructor() public {}

    function test() public {
        IERC20(address(msg.sender)).transfer(address(this), 1000000000000000000);
    }
}
