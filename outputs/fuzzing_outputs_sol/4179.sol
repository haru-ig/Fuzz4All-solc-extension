pragma solidity ^0.8.0;
contract NoFallbackCaller{
    function call() public {
        address(0).call{value:1}("");
    }
}
