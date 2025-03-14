pragma solidity ^0.8.0;
contract Mutater7 {
    constructor() {
        fallback = abi.encodeWithSignature("fallback() payable");
        returnResult = abi.decodeCall(fallback, (uint)[], 0, "");
    }
    function getReturnResult() public view returns (bytes memory) {
        return returnResult;
    }
    bytes private fallback;
    bytes private returnResult;
}


contract Mutater8 {
    constructor() {
        fallback = abi.encodeWithSignature("fallback() (uint256)");
        returnResult = abi.decode(keccak256(abi.encode(fallback, 55000).add(abi.encodePacked("\x00", "\x20", 32))), (uint)[], 0, "");
    }

    function getReturnResult() public view returns (bytes memory) {
        return returnResult;
    }
    bytes private fallback;
    bytes private returnResult;
}
