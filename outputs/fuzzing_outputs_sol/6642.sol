pragma solidity ^0.8.0;
contract FallbackFunction {
    function fallback() public pure payable { }
    receive() public pure payable { }
}
