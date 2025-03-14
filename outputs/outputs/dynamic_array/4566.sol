pragma solidity ^0.8.0;
contract Greeting {

    constructor() public {

        address msgSender = msg.sender;
        uint256 greetingIndex = getNewGreetingIndex();
        greetings[msgSender][greetingIndex].msgSender = msgSender;
        greetings[msgSender][greetingIndex].greeting = "Hello this is a greeting!";
    }

    function getGreetingByIndex(uint256 index) public view returns (address, string memory) {



        return (greetings[msg.sender][index+1].msgSender, greetings[msg.sender][index+1].greeting);
    }

    function greet() public {

        address msgSender = msg.sender;
        uint256 greetingIndex = getNewGreetingIndex();
        greetings[msgSender][greetingIndex].msgSender = msgSender;
        greetings[msgSender][greetingIndex].greeting = "Hello this is a greeting!";
        emit GreetingCreated(msgSender, greetingIndex);
    }


    function getNewGreetingIndex() public pure returns (uint256) {
        return greetingsCount.add(1);
    }







    uint25
