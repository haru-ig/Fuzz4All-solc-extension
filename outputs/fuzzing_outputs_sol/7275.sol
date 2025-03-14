pragma solidity ^0.8.0;
contract SimpleFallback {
    event SayHello(address _caller);

    function hello() public payable {
        emit SayHello(msg.sender);
    }
}
