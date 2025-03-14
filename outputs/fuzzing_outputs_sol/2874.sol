pragma solidity ^0.8.0;
contract Foo {
    receive () external payable {
    }
    fallback (address, uint256) external payable {}
}
