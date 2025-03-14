pragma solidity ^0.8.0;
contract MutatedABIv2
{
    address payable owner;
    address payable addr1;

    constructor() public {
        owner = payable(address(this));
        addr1 = payable(address(this));
    }

    modifier payableOnly {
        if(msg.sender!= owner)
            revert();
        _;
    }

    function callme() public payableOnly {
        msg.value = 1 ether;
        msg.sender.transfer(2 ether);
    }
}
