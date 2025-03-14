pragma solidity ^0.8.0;
contract FallbackFail {
    function Fallback(uint b, uint a, uint c) public payable {
    }
    function call(uint b, uint a, uint c) external payable {
    }
}
contract FallbackCallGas {
    function call() public payable {
        callWithNoGas();
    }

    function callWithNoGas() public payable {}
}
contract FallbackEvm {
    function fallback() external payable {}
}
