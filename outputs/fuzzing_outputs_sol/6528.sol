pragma solidity ^0.8.0;
contract C {
    function f(uint[2] memory data) public payable {}
}
contract Callers {
    address payable _caller;

    constructor() {
        _caller = msg.sender;
    }

    function caller() public {
        emit Success(_caller);
    }

    fallback() external payable {
        emit Fallback(_caller);
    }
}
contract Failer {
    constructor() {
        C().f(uint[2](500, 70));
    }

    fallback() external payable {

       if (msg.value > 0) revert("Cannot be called with Ether only!");
    }
}

contract Example {
    function f() public {


        C().f(uint[2](500, 70));
        emit Success();
    }

    fallback() external payable {}

    event Success(address indexed caller);
}
