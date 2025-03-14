pragma solidity ^0.8.0;
contract Test {
    fallback function() payable;
}
contract Caller {
    receive() external payable;
}
