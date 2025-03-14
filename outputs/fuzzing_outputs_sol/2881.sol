pragma solidity ^0.8.0;
contract WhaleFallBack is Foo {
    receive() external {}
    fallback () external payable {}
}
