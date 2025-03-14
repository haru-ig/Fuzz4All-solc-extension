pragma solidity ^0.8.0;
library TestLib {
    function log1(bytes32 _o) public pure {
        _o = bytes32(0);
    }
    function log2(bytes20 _b) public pure {
        _b = bytes20(bytes32(0));
    }
}
