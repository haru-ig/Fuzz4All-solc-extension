pragma solidity ^0.8.0;
contract ReceiveWithoutFallback {
    fallback() external payable {   }
    receive() external payable {

    }
}
