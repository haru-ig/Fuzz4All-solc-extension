pragma solidity ^0.8.0;
contract Caller {
    bytes32 public value;
    function call() public fallBackFunc(bytes memory) {}

    function fallBackFunc(bytes memory msg) public {
        value = keccak256(abi.encodePacked(msg));
        require(address(this).call{value: value}(), "Fallback failed");
    }
}
