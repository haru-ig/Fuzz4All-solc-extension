pragma solidity ^0.8.0;
contract Fallback {
    mapping (bytes4 => address) internal _fallbacks;
    function setFallbackFunction(bytes4 bytes4Addr, address addr) external {
        require(_fallbacks[bytes4Addr] == address(0), "Caller: fallback function already set.");
        _fallbacks[bytes4Addr] = addr;
    }
    function callWithFallback(bytes4 bytes4Addr) public {
        (bool success, bytes memory returnData) = address(_fallbacks[bytes4Addr]).call{value: msg.value}("");
        require(success, "Caller: fallback function call failed.");
    }
}
