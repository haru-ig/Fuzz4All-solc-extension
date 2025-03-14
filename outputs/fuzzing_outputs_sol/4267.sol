pragma solidity ^0.8.0;
contract Caller {
    address payable payableToCaller;


    receive() external payable {


        payableToCaller.call.value(address(this).balance)();
    }


    function Mutator() public pure {
    }
}
