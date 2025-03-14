pragma solidity ^0.8.0;
contract semanticallyequivalent18
{
    address address0;
    struct Record { address addr; uint amount; constructor(uint amount) public {address0 = owner();} }
    Record[] public arrayRecords;
    modifier _address0_is_address(address addr) {
        address0 = addr;
        _;
    }
    constructor(uint amount) public payable _address0_is_address(address(0)) {
       arrayRecords.push(Record(amount));
    }
}
