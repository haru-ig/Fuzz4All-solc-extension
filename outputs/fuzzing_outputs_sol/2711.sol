pragma solidity ^0.8.0;
contract Fallback {
    function() external payable { revert("Fallback not called"); }
}

contract NonFallback {
    function set(uint x) public { revert("set function not called"); }
}
