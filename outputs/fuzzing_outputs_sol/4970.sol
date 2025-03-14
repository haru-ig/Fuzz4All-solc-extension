pragma solidity ^0.8.0;
contract Fallback {
    function fallback() public pure { revert("Called fallback!"); }
}
