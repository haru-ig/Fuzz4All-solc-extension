pragma solidity ^0.8.0;
I contract1 = I("hello");


string memory key = contract1.get("hi");
delete contract1;
string memory key1 = contract1.get("hi");
