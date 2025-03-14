pragma solidity ^0.8.0;
contract Caller {
    function callFunction() public payable {
         mutator mutatorContract = Mutator(0x00);
         mutatorContract.functionCalled{value:0.1 ether}(0xdada);
    }

    receive() public payable {

    }
}
