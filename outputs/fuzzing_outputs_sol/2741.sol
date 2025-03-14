pragma solidity ^0.8.0;
contract Caller2 {
    event Log(uint _number);

    fallback() public payable {
        emit Log(msg.value);
    }
}

contract Caller {
    event Log(uint _number);

    receive() external payable {
        emit Log(msg.value);
    }
}

contract Caller5 {
    function _fallback() public payable {}
}

contract Caller1 {
    event Log(uint _number);

    fallback() public {
        emit Log(msg.value);
    }
}
