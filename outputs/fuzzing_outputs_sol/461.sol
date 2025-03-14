pragma solidity ^0.8.0;
contract MutatedCaller3 {
    receive() external payable {

    }
}

pragma solidity >= 0.6 <0.9;
contract Caller3 {
    address payable fallback;
}
