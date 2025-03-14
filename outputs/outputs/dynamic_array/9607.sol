pragma solidity ^0.8.0;
 contract Main {
    address payable addr;

    constructor() public {
    addr.transfer(0);
    }

    function callMain(address payable _addr) public {
        addr.transfer(_addr.call.value(4 ether)());
    }
}
