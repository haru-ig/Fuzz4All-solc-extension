pragma solidity ^0.8.0;
contract Caller {
    FallbackReceivable receiver;
    receive() external payable {}
    function Fallback() public payable {
        receiver.fallback();
    }
}
