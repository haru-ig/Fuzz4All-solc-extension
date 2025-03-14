pragma solidity ^0.8.0;
contract Caller2 {
    function fallback() public {
        address(0).call{value: address(this).balance}("");
    }
}
contract Caller2 {
    function payableFallback() public {
        address(0).call{value: address(this).balance}("dummy");
    }
}
