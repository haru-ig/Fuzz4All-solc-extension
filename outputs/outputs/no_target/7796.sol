pragma solidity ^0.8.0;
library TestLib {
    function log1(bytes32 o) public pure {
        o = bytes32(0);
    }
    function log2(bytes20 b) public pure {
        b = bytes20(bytes32(0));
    }
}
