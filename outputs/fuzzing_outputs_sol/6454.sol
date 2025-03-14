pragma solidity ^0.8.0;
contract C {
    uint private x;
    receive() payable {

        x++;
    }
}
