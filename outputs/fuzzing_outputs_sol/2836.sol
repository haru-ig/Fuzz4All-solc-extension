pragma solidity ^0.8.0;
contract Caller {
    function() external payable { msg.sender.transfer(4000) }

    function fallback() public payable { throw ; }
}
