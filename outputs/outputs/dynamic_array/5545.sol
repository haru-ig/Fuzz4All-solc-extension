pragma solidity ^0.8.0;
contract Test66 {
    address payable payable1;
    address payable payable2;
    receive() payable external {
        payable1.call{value: 10}("");
        payable2.call{value: 10}("");
    }
}
