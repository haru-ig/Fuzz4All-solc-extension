pragma solidity ^0.8.0;
contract RepeatingWithFallbackNoException {
    fallback () {}
    fallback () external payable {}
}
