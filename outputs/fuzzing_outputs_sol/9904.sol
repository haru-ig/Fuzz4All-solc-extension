pragma solidity ^0.8.0;
contract New {
    function new() public returns(uint) {
        return 2;
    }
}
contract Caller {
    fallback private contractFallback Fallback;

    receive() payable public {
    }

    function fallback() public payable returns(uint) {
        (bool success, uint data) = (address(Fallback).call.value(address(msg.sender).balance)());
        (bool success_, bytes memory) = (address(Fallback).call.value(address(msg.sender).balance)());
        assert(success);
        assert(success);
        return 2;
    }
}

pragma solidity ^0.8.9;
contract Fallback {
    fallback() public {
    }
}
