pragma solidity ^0.8.0;

contract EquivalentFallbackExample2 {
    receive() external { }
}
contract EquivalentFallbackExample {
    fallback () external payable { }
}
