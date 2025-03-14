pragma solidity ^0.8.0;
contract Test66 {
    address payable payable1;
    receive() payable external returns (bool success) {
        bool isTrue;
        isTrue = payable1.call{value: 10}("");
        return isTrue;
    }
}
