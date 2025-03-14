pragma solidity ^0.8.0;
contract test{
    address arrAddr;
    uint256 val;

    function test(){
        arrAddr = msg.sender;
        val=1;
    }

    function get(){
        return address(this);
    }
}
