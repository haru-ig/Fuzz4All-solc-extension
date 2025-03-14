pragma solidity ^0.8.0;

contract Caller is Caller {
    function get() external pure returns (uint) {
        return 10;
    }
    function fallback(uint x) external payable {
        msg.sender.transfer(x);
    }
}
