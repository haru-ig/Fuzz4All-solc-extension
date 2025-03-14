pragma solidity ^0.8.0;
contract InvalidFallbackCaller{
    function call(string calldata "") public pure {
        address(0).call{value:1}("");
    }
}
