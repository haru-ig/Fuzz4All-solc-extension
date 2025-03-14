pragma solidity ^0.8.0;
contract CallerExample20 {
    contract C {
        function callWithFallback(address to, uint value) public {
            (bool success, ) = to.call{value: value}(abi.encodeWithSignature("fallback()"));
            require(success, "Ethers.fallback_called");
        }
    }
    function subtractFallback(uint x, uint y) public pure returns (uint z) {
        (bool success, ) = C.callWithFallback(address(this), abi.encodeWithSignature("subtract(uint256,uint256) public pure returns (uint)", x, y));
        require(success, "Ethers.fallback_failed");
        return abi.decode(z, (uint));
    }
}
