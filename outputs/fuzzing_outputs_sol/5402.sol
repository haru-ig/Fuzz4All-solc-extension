pragma solidity ^0.8.0;
contract simplefallback
{
    event TransferEvent(address from, address to, uint256 value);
    function() external {
        address sender = msg.sender;
        emit TransferEvent(address(0), sender, msg.value);
    }
}
contract Caller
{
    function simplefallback2() public pure{
        simplefallback2().fallback();
    }
}
