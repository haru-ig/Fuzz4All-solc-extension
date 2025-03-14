pragma solidity ^0.8.0;
contract MyContract {
    event CalleeEmitted(bytes32 indexed caller, address indexed callee, bytes32 indexed calleeData);

    function calleeFunction(bytes memory) public {
        emit CalleeEmitted("Caller", msg.sender, "Hello");
    }

    function getAddress(address storage x) public returns (address) {
        return address(0);
    }
}
