pragma solidity ^0.8.0;
contract Caller {


    receive() external pure { }


    address payable receive(uint256) external pure { }

    address payable receive() external pure { }
}
