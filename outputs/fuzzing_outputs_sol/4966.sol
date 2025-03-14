pragma solidity ^0.8.0;
contract Fallback {
    receive() external payable { }
    fallback(uint) external payable { }
    function() external payable { }
}
