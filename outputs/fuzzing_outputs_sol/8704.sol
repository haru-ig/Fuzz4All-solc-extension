pragma solidity ^0.8.0;
contract Repeater {
    receive() external payable {
        bytes memory data = "repeater";
        while(true){
            emit Log(data);
        }
    }
}
