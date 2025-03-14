pragma solidity ^0.8.0;
contract CallerFallbackExample {
    function receive() payable {}
    address public value;
    constructor() {
        value = address(this);
    }
    function call() public payable pure {
        value = address(this);
    }
}
