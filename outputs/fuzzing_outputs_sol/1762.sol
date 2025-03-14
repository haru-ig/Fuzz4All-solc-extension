pragma solidity ^0.8.0;
interface IAddress {
    function msgSender()external view returns(address);
}
contract TestCaller {
    address public addr;
    constructor() {
        addr = msg.sender;
    }
    function address2addr() public payable {
        address2addr(addr);
    }
    function address2addr2() public payable {
        address2addr(addr);
    }
}
