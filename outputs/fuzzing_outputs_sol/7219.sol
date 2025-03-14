pragma solidity ^0.8.0;
contract Example5 {
    bytes public message1;
    bytes public message2;

    modifier onlyFirstMessage {
        require(msg.data!= message1);
        _;
    }

    modifier onlySecondMessage {
        require(msg.data!= message2);
        _;
    }
    function example5() public payable onlyFirstMessage {
        message1 = msg.data;
    }
    function example6() public payable onlySecondMessage {
        message2 = msg.data;
    }
}
