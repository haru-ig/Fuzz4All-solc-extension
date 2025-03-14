pragma solidity ^0.8.0;
contract LowLevelCall {
    receive() external payable {
    }
}
contract FallbackAndReceive {
    receive() external payable {}
    function fallback() public payable {
    }
}
contract FallbackAndLowLevelCall {
    receive() external payable {}
    function fallback() public payable {}
    receive() external payable {}
    function receive() external pure {
    }
}
