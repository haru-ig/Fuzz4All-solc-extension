pragma solidity ^0.8.0;
contract Receiver {
    receive () external;
    receive () external payable { }
}
