pragma solidity ^0.8.0;
contract Test47_DynamicMemory {
    address admin;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        admin.call(abi.encodeWithSignature("()"));
    }
}
