pragma solidity ^0.8.0;
contract Mutate2 {
    bytes32 public constant X = "Test";
    function mutateBytes(bytes memory b) public pure {
        uint i;
        uint256 d;
        uint128 ui;
        string memory s;
        uint32[] memory arr = new uint32[](2);
        arr[1] = 1;
        arr[0] = 0;
        (arr[1] = 10) = 9;
        b = stringToBytes32("Test");
        (i, d) = iPlusD(bytes32(1), byte(49), 49);
        s = iPlusD(bytes32(1), byte(49), 49).toString();
        (i, d) = iPlusD(bytes32(1), byte(49), 49);
        (ui, s, d) = (888888, "Test", uiPlusD(uint(5), uint(7), 100));
        ((i, d)) = iPlusD(bytes32(1), byte(49), 49);
        (i, d) = iPlusD(bytes32(1), byte(49), 49);
        bytes4 c = bytesPlusD(bytes32(1), byte(49), 49);
        (i, d) = iPlusD(bytes32(1), byte(49), 49);
        (s,,, arr) = (stringToBytes32(0x94), iPlusD(bytes32(8), uint(42), 42), dPlusD(1, 2));
        (i, d) = iPlusD(bytes32(1), byte(49), 49);
        (i, d) = iPlusD(bytes32(1), byte(49), 49);
    }
    function stringToBytes32(string memory s) internal pure returns (bytes32) {
        bytes memory b = bytes(s);
        assembly {
            b := mload(add(s, 32))
        }
        return b;
    }
    function iPlusD(bytes32 a, uint b, uint c) internal pure returns (uint, uint) {
        uint x = uint(a) + b + uint(c);
        return (x, x);
    }
    function bytesPlusD(bytes32 a, uint b, uint c) internal pure returns (bytes4) {
        bytes4 x = bytes4(a) + bytes4(b) + bytes4(c);
        return x;
    }
    function uiPlusD(uint a, uint b, uint c) internal pure returns (uint) {
        uint x = a + b + uint(c);
        return x;
    }
    function dPlusD(uint a, uint b) internal pure returns (uint) {
        uint x = a + b;
        return x;
    }
}

pragma solidity >=0
