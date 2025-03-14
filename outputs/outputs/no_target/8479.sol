pragma solidity ^0.8.0;
contract Mutated1 {
    uint64 public a;
    uint64[8] public b;
    uint256 c;
    constructor (
        uint64 _value1,
        uint64[8] memory _value2,
        uint256 _value3
    ) public {
        b = _value2;
        c = a = 0;
        if (_value3 > 256) revert();
    }
    mapping (address => uint64) public d;
    mapping (bytes32 => uint64) public e;
    function getAddress (uint256 i) public returns (address) {
        (uint64 _k0, uint64 _k1, uint256 _k2) = address(uint160(uint256(_k1)))/address(uint160(uint256(_k2)));
        uint64 _addr = _k0 + d[_k1];
        if (_k1 == _k2) {
            bytes32 k2 = uint160(uint256(_k2));
            if (
                (uint256(k2) >> 64 == (uint256(_k2) & 0xfffffffffffffffffffffffffffffffe00) >> 63)
                &&
                i >= k0 && i < k1
            ) {
                return address(uint160(uint256(_k2)));
            }
        }
        return address(uint160(uint256(_addr)));
    }

    function getAddressWithBytes32 (bytes32 b32) public returns (address) {
        {
            uint64 _k0, uint64 _k1, uint256 _k2;
            (
                uint64 _k0, uint64 _k1, uint256 _k2
            ) = address(uint160(uint256(_k1)))/
