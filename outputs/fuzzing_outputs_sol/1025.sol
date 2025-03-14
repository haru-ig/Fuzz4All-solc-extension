pragma solidity ^0.8.0;
contract Compatibility {
    bytes32 public immutable _bytes = keccak256("Hello, world!");
    bytes _bytes1 = "Hello, world!";
    fallback_receive(_bytes1);
}
