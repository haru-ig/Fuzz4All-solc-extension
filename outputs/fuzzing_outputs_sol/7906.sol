pragma solidity ^0.8.0;
contract Caller
{
    function foo() external
    {
        (uint storedData) = msg.sender.delegatecall(abi.encodeWithSelector(this.receive.selector, 13));
        require(storedData == 13);
    }
    receive() external payable {}
    fallback() external payable {}
    function fall_back(uint receivedData) public pure virtual
    {
        ( ) = msg.sender.call.value(receivedData)("");
    }
}
