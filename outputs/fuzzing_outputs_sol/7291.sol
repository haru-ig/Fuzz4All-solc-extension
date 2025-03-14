pragma solidity ^0.8.0;
contract FallbackExample {
    address public value;
    constructor() {
        value = address(0xDEADBEEF);
    }
    function test() public payable {
        value.call{value:msg.value}(abi.encodeWithSignature("fallback()"));
    }
}
