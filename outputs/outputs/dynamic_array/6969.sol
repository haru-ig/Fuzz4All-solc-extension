pragma solidity ^0.8.0;
contract Test8 {
    bytes32[] a;
    mapping(address => mapping(address => bytes32)) m;
    constructor() {
        a.push(0xEA55B6B60B90E9EC000CD003D06344E03070BB00E3446C69786E6D6E);
        bytes32[] memory i1 = a;
        bytes32[] memory i2 = i1;
        bytes32[] memory i3;
        i3 = i2;
        i2 = i3;
    }
    function s() public pure returns (uint) {
        assert(m[msg.sender][0].equals(a.pop()));
        return 0;
    }
    function v() public {
        (bytes32[] memory s3, bytes32[] memory s3_copy) = m[msg.sender][0].split(0);
        a.push(s3_copy.pop());
        assert(m[msg.sender][0].equals(s3.pop()));
    }
}
