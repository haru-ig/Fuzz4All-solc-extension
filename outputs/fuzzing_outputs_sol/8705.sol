pragma solidity ^0.8.0;
contract MutatedCaller {
    receive() external pure { _; }
    function transfer() public pure {}
    function fallback() public pure {}
    function call() public pure {}
}
