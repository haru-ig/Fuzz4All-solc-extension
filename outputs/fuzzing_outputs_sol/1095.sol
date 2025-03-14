pragma solidity ^0.8.0;

contract Auction {

    address public contract = msg.sender;


    constructor() public {

        owner = msg.sender;
    }


    function() external payable {
        selfdestruct(contract);
    }


    function release() public {

        contract = owner;
    }
}
