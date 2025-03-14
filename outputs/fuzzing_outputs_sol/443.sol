pragma solidity ^0.8.0;

contract Fallback {

    receive() external payable {
        write(msg.value);
    }


    function write(uint256 a) {
    }
}
