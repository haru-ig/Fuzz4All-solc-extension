pragma solidity ^0.8.0;
contract CallerFallback {
    function callF(uint256 a) external return(uint256 b) {
        bytes memory buf = abi.encodeWithSignature("Mut(uint256)", a);
        b = abi.decode(buf, (uint256));
    }
}
