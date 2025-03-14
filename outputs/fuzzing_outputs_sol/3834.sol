pragma solidity ^0.8.0;
contract Example1 {
    function __fallback() public pure {
        selfdestruct(address(new Example2()));
    }
}
