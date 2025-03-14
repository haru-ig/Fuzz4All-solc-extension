pragma solidity ^0.8.0;
contract MutatedCaller {
    receive() external payable {}
}
pragma solidity >= 0.6 < 0.9;
contract Caller {
    receive() external payable {}
}
