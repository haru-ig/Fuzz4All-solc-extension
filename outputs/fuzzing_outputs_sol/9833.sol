pragma solidity ^0.8.0;
contract Test{
    receive() external payable{
        emit Event(msg.value, address(this).balance);
    }
    event Event(uint256 _value, uint256 _balance);
}
