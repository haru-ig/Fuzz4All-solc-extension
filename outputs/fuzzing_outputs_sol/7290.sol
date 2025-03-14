pragma solidity ^0.8.0;
contract FallbackExample {
    address public value;
    constructor() {
        value = address(this);
    }
    function test() public payable returns (bool) {
        value.call{value:msg.value}(abi.encodeWithSignature("fallback()"));
   }
}
