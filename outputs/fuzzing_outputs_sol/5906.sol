pragma solidity ^0.8.0;
contract Fallback {
    receive() external payable {}
}
contract Caller {
    function fallback() external payable {}
}
