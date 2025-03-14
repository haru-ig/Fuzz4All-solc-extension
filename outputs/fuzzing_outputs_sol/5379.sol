pragma solidity ^0.8.0;
contract Caller {

    function doPay(address addrToPay) public payable {
        addrToPay.transfer(address(this).balance);
    }
}
