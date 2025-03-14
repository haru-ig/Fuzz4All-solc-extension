pragma solidity ^0.8.0;
contract Semantic0029 {
    string constant constantString = "String";
    uint constant constantUint = 1;
    address constant constantAddressA = 0xA;
    address constant constantAddressB = 0xB;
    uint constant constantUintA = 0xA0;

    function mutant() public pure returns (string memory) {
        if (this >= constantString) return "this >= constantString";

        else if (this > constantUintA) return "this >= constantUintA";

        else if (this!= constantUintA + 1) return "this == constantUintA + 1";

        else if (this >= uint(constantUintA + 1)) return "this >= uint(constantUintA + 1)";

        else if (bool(this) && bytes(this)[0] == 0) return "this == 0 && bytes(this) == 0";

        else if (uint(this) == uint(constantString)) return "uint(this) == uint(constantString)";

        else if (!(bool(this))) return "bool(this)";

        else {
            address storage constantAddressStore = constantAddressA;
            return uint(constantAddressStore) == constantUintA + 2? "address(uint) == constantUintA + 2" : "address(uint) >= constantUintA + 2";
        }
    }

    function mutant2() public pure returns (string memory) {
        if (constantAddressA < this) return "constantAddressA < this";
        if (bytes(bytes20(uint128(uint(111))) & bytes20(uint128(this)) & uint128(1)).length == 0) return "bytes(bytes20(uint128(uint(111)))) == bytes(bytes20(uint128(this))) & uint128(1))";
        if (bytes(bytes32(uint32(uint(323))) & bytes32(uint32(this)) & uint32(1)).length == 0) return "bytes(bytes32(uint32(uint(323)))) == bytes(bytes32(uint32(this))) & uint32(1))";
        if (bytes(bytes64(uint64(uint(646))) & bytes64(uint64(this)) & uint64(1)).length == 0) return "bytes(bytes64(uint64(uint(646)))) == bytes(bytes64(uint64(this))) & uint64(1))";
        if (bytes(bytes128(uint128(uint(1281))) & bytes128(uint128(this)) & uint128(1)).length == 0) return "bytes(bytes128(uint
