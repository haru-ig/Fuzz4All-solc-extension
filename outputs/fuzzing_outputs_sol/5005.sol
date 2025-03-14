pragma solidity ^0.8.0;
contract Mutated {


    function() public payable {
        (bool success, ) = address payable(msg.sender).call.value(30 ether)("");
        require(success);
    }



    function() public calldata {}
}
