pragma solidity ^0.8.0;
contract Fallback {
    fallback() public payable {}
    function set(uint x) public payable {}
}
assembly {
    function noop() { }
}
