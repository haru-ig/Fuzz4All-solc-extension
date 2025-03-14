pragma solidity ^0.8.0;
contract MutatedAbiCoder {
    bytes10 constant number = abi.encode(10);
    bytes32 constant array = abi.encodePacked("Hello", 1 << 240);
    bytes32 constant bytes = abi.encode("\x19Ethereum Signed Message:\n0x"  );

    function encodeNumber(uint128[] memory o, bytes memory i) public pure returns (bytes memory) {
        return encodeNumber(bytes(i), abi.encode(o));
    }

    function encodeArray(uint128[] memory o, bytes memory i) public pure returns (bytes memory) {
        (bytes memory o2, bytes memory i2) = encode(uint128(0), [abi.encodePacked("Hello", 1 << 240)], i);
        return encode(uint128(0), [i2, o2], o);
    }

    function encode(uint8 a, uint8 b, bytes memory in1, bytes memory in2, bytes memory in3) public pure returns (bytes memory data) {
        require(in1.length <= max);
        require(in2.length <= max);
        data = abi.encode(a, b,...in1,...in2,...in3);
    }

    function decode(uint8 a, uint8 b, bytes memory in1, bytes memory in2, bytes memory in3, bytes memory o) public pure returns (uint128[], bool) {
        uint l;
        (uint n1, uint n2,) = abi.decode(in1, (uint8[4]), "ABI Coder Invalid");
        (uint n3, uint n4,) = abi.decode(in3, (uint8[4]), "ABI Coder Invalid");
        (l, n3) = uint128(n2+n3).divmod(a*n2*n3 + 1);
        (l, n4) = uint128(n3+n4).divmod(a*n3*n4 + 1);
        (l, n1) = uint128(n4+n1).divmod(a*n4*n1 + 1);
        require(l == 0);
        return abi.decode(in2
