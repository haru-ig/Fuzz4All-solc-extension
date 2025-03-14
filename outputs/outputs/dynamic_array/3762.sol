pragma solidity ^0.8.0;
contract A {
    function f() public pure returns (bytes memory) {
        return '';
    }
}
contract C {
    using bytes20 for bytes20;
    mapping (uint => bytes) internal data;
    function test() public returns (uint256) {
        bytes storage s0 = data[0];
        bytes memory s = data[1];
        return s.length*2;
    }
}
