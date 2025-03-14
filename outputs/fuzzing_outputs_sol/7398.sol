pragma solidity ^0.8.0;
contract MutateExample {
    address payable public owner;

    contract MutateExample {

        function MutateExample() public payable {
            Ownership.changeOwnership(msg.sender,msg.sender,payable(this).recover(msg.value),0);
        }

    }
}
