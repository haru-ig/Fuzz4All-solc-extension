pragma solidity ^0.8.0;
contract MutateCallerContract {
    uint8 v;
    bytes32 r;
    bytes32 s;
    uint8[] memory acc;

    function MutateCallerContract() public {
        uint256 len;
        assembly { len := extcodesize(address(0)) }
        assembly { acc := mload(add(0x20, 0x20)) }
        acc = bytes1(0);
        acc[len] = 9;
        assembly { acc[0] := 0 }
    }

    function fallback() public payable {
        v = s;
        r = add(s, 0x0000000000000000000000000000000000000001);
        s = add(s, 0x000000000000000000000000000000000001);
        acc[v] = 0;
    }
}
