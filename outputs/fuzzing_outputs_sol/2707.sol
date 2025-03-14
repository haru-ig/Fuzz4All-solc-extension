pragma solidity ^0.8.0;
contract Fallback {
    function set(uint x) { revert("Fallback not called"); }
}
