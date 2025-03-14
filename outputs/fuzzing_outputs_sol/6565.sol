pragma solidity ^0.8.0;



contract ExampleFallback {

    receive() external payable {}

    address payable fallback() public pure {}
}
