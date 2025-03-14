pragma solidity ^0.8.0;
contract Example4 {
    receive () external payable {
        balance = balance - 1 ether;
    }
    address payable balance;
}
