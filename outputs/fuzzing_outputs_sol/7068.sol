pragma solidity ^0.8.0;
contract Caller {
    function fallback() public payable {}
    function payableFallback() public payable {}
    function receive() public payable {}
    function receiveWithTag(uint256 tag) public payable {
        emit Received(msg.sender, tag);
    }
}
