pragma solidity ^0.8.0;
contract A {

    struct Nested2 {
        function f1(uint x) public pure returns (uint) {
            return x;
        }
        function f2(uint x) public pure returns (uint) {
            bytes32 b = uint256ToBytes32(x);
            return x ^ uint(b);
        }
    }

    mapping (address => bytes32) public _mapping;

    A.Nested2[0] nested;
    A.Nested2[1] nested2;

    function f() external pure returns (address, bool) {
        uint x;
        uint y;
        (x, y) = bytes2UintAndUint256(keccak256('x'));
        uint1  z;
        string memory str;
        (x, z) = bytes2Uint1AndUint16(keccak256('z'));
        (x, y) = bytes2UintAndUint256(keccak256('y'));
        (x, y) = bytes2UintAndUint256(keccak256('x'));
        Nested2 s(x, y);
        uint z;
        str = s.f1(uint8(0));
        uint m;
        (x, m) = bytes2UintAndUint256(keccak256('m'));
        (x, x, x, m) = bytes2UintAndUint256AndUint256(keccak256('xxxxxx'));
        uint128 k;
        (k, x, x, x, k, k, k, x, x, k) = bytes2Uint64AndUint64AndUint64AndUint64AndUint64AndUint64AndUint64AndUint64AndUint64AndUint64(keccak256('x')));
        (k, x, x, x, k, k, x, x, k) = bytes2Uint64AndUint64AndUint64AndUint64AndUint64AndUint64AndUint64AndUint64AndUint128(keccak256('x')));
        (x, x, x, m) = bytes2UintAndUint256AndUint256(keccak256('xxxxxx'));
        (k, x, x, k) = bytes2UintAndUint64AndUint64(keccak256('xxxxx'));
        bytes32 b;
        (x, b) = bytes2UintAndBytes32(kecc
