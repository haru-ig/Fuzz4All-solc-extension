pragma solidity ^0.8.0;
contract MutatedCallerContract3 {
    function fallback() external payable {
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        (v, r, s, acc) = abi.decode(msg.data, (uint256, bytes32, bytes32, uint8[]));
    }
}
