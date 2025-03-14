pragma solidity ^0.8.0;
contract ComplexFallback {
    receive() external payable {


        emit EtherSent(address(this), msg.value);
    }
}
