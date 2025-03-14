pragma solidity ^0.8.0;
contract Caller1
{
    function caller() public returns (address payable){
        if(msg.value >= 5 ether)
            return msg.sender;
        else
            return address(0x1);
    }
}
