pragma solidity ^0.8.0;

contract fifth{
    receive () external payable {
    }
     receive (uint i) external payable {
        require (i < 10);
    }

} */
