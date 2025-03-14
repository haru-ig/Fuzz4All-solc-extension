pragma solidity ^0.8.0;

contract Caller {
    receive () external payable { }
}

contract Fallback {
    receive () external pure returns (bytes memory) {    }
}
