pragma solidity ^0.8.0;
contract Caller {
    fallback();
    receive() external payable {}

    function fallback() public payable { require(value > 0); }
}
