pragma solidity ^0.8.0;

import "ReceivingEther.sol";

contract Caller {


    receive() external payable {

        ReceivingEther.receiveEther("Ether from Caller");
        assert(false);
    }
}
