pragma solidity ^0.8.0;
import "./Receiver.sol";

contract SimpleFallback {
    address public contractAddr;
    bool public isFallback = false;

    function __callback() public payable receiverCallFallback() public {
        if(!isFallback) {
            isFallback = true;
            contractAddr = msg.sender;
        }
    }

    receive() public payable {
        if(isFallback) {
            contractAddr.transfer(address(this).balance);
            isFallback = false;
        }
    }
}
