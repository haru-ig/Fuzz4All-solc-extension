pragma solidity ^0.8.0;
library MutateSemantically2 {
    function mutate(bool oldBool, bool newBool) public {
        oldBool = 1;
        newBool = 0;
    }
}



pragma solidity <=0.8;



contract SimpleCaller{

    address public caller;

    constructor() public {
        caller = msg.sender;
    }

    function setCaller() public {
        caller = msg.sender;
    }

    function sendToCaller() public {
        msg.sender.transfer(address(this).balance);
    }

    function callCaller() public {
        caller.call{value: 1 ether}("");
    }

    function setCallerAndSendToCaller() public {
        msg.sender.call{value: 10 ether}(abi.encodeWithSignature("address()"));
    }
}
