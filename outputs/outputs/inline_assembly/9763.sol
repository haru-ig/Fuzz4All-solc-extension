pragma solidity ^0.8.0;
contract MutatedYulContract6 {
    uint constant c = 0x00;

    fallback() external payable {
      uint x = 30;
    }

    function x() public pure returns(bool) {
    return true;
    }


        function y() public {
    }
    receive() external payable {
    return;
    }
    receive() external receive() {
    return;
    }
    receive() external payable receive() {
    return;
    }


        function z() public {
    return;
    }
    receive() external payable payable {
    return;
    }
    receive() external payable receive() {
    return;
    }
    receive() external payable payable payable {
    return;
    }


        function z() public {
    return;
    }
    receive() external {
    return;
    }
    receive() external payable {
    return;
    }
    receive() external payable payable {
    return;
    }
    receive() external payable payable payable payable {
    return;
    }
}
