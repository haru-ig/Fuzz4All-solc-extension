pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract NestedStructs {
    struct Parent { bytes foo; bytes bar; uint256 baz; }
    struct Child { bytes x; bytes y; uint256 z; uint8 data; }
    bytes16 constant A = 0xF0;
    bytes16 constant B = 0xF2;
    bytes16 constant C = 0xF4;
    bytes16 constant DATA = 0xF6;
    Parent[] memory parents;

    mapping(bytes16 => Child[]) children;

    function assignSameKeyDifferentValues() view internal returns(bytes16) {
        return A;
    }
    function assignSameKeyDifferentValues1() view internal returns(bytes16) {
        return B;
    }
    function append() public {
        children[A] = new Child[][](1);
    }
    function appendWithNested() public {
        children[A] = new Child[][][](1);
        children[A][0] = new Child[](1);
    }
    function appendValueWithBytesAndUint() public {
        children[A] = new Child[](1);
        children[A][0].z = uint(DATA);
    }
    function appendEmptyValueUint() public {
        children[A] = new Child[](1);
        children[A][0].data = uint8(DATA);
    }

    function appendValueWithBytes() public {
        children[A] = new Child[](1);
        children[A][0].x = C;
    }
    function appendValueWithBytesAndUnpacking() public {
        uint[] memory unpacked;
        uint[] memory unpacked2;
        bytes b;
        unpacked = new uint[](1);
        b = new bytes(1);
        unpacked = new uint[](7);
        b = new bytes(7);
        child_struct child;
        child = new child_struct;
        child.data = uint8(DATA);
        b = child.pack_bytes();
        unpacked = child.unpack_int(b);
        assert(unpacked.length == 7 || unpacked.length == 1);
        b = child.pack_bytes();
        unpacked2 = child.unpack_int2(b);
        assert(unpacked2.length == (1 || 7));
        unpacked = child.unpack_int2(child.pack_bytes());
        assert(unpacked2.length == 2);

        b = child.pack_bytes_array(uint[](7));
        uint[] memory unpacked3 = child.unpack_int2(child.pack_bytes_array
