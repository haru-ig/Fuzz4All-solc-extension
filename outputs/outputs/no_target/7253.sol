pragma solidity ^0.8.0;
contract AbiCoderCounter {
    uint constant internal max = 5;
    uint x;
   function setX() public {
        x += 1;
    }
    uint y;
   function setY() public {
    }
}
contract AbiCoderTests {
    using AbiCoder for bytes;
    using AbiCoder for uint;

    constructor(uint initialCounter) public {
        uint a;
        bytes b;
        uint c;
        bytes32 d;
        uint160 e;
        address f;
        string g;
        bytes4 h;
        uint i;
        bytes memory j;
        bytes32 k;

        uint d2;
        bytes32 e2;
        uint160 f2;
        address g2;
        bytes4 h2;
        uint d3;

        assert(0x123 == keccak256(abi.decode(0x123, (bytes4))), "x1");
        d2 = keccak256(abi.decode(0x123, (bytes32)));
        c = bytesToUint(abi.decode("0x0a", (bytes)));
        d = bytes32ToBytes32(abi.decode(0x123, (bytes)), 0);
        bytes1 b = stringToBytes("0x12");
        uint8 b1 = bytes(abi.decode(0x123, (bytes1)));

        (uint256 a1, ) = abi.decode(0x123, (uint256));
        assert(a == a1 + initialCounter, "k1");

        bytes memory a2 = "0x12".toBytes(bytes.max);

        uint a3;
        (a3, ) = abi.decode(abi.encode(abi.encode(0xdeadface, 123), 21), (uint, bytes));
        assert(a3 + 1 == a, "k2");

        uint32 a4;
        bytes memory a5 = "0xdeadface123".toBytes(41);
        (a4, ) = abi.decode(abi.encode(abi.encode(0xdeadface, 123), 21), (uint32, bytes));
        assert(a4 + 123 == a, "k3");

        (a4, a5) = abi.decode(abi.encode(abi.encode(0xdeadface, 123), 21), (uint32, bytes));
        assert(a4 + 123 == a, "k
