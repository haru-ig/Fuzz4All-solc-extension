pragma solidity ^0.8.0;
contract MutatedSemantics {
function get() public pure returns (uint256 _v) { _v = 1; }
function set(uint256 _v) public { _v; }
function mutated() public {
    bytes32 signature = "set(uint256)";
    uint256 _v = callAndReturn(this, signature, bytes(abi.encodePacked(_v)), false, false);
    selfdestruct(_v);
}
}


pragma solidity ^0.8.0;
contract MutatedSemantics2 {
address public to;
address public from;
address public data;
function get() public pure returns (uint256 _v) { _v = 1; }
function set(uint256 _v) public { _v; }
function mutated() public {
    bytes32 signature = "set(uint256)";
    uint256 _v = lowLevelCall(bytes32(signature), this);
    selfdestruct(_v);
}
}
