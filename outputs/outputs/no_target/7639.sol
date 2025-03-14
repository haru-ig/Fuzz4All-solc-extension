pragma solidity ^0.8.0;
contract Y {
    receive() external payable {
        gasleft --;
    }
}
