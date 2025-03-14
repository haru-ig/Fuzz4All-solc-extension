pragma solidity ^0.8.0;
contract Mutations {

    bytes32[] array;
    function new_func() public {
        array.push(_a);
        array.push(_a);
        array.push(_a);

        assembly {
            let min := 0xFF0F_FFFF0000000000
            if eq(gt(array, 1), 0) {
                min := 0xFFFF_FFFF00000000
            } else {
                min := array{1,1,1}
            }
            array := min
        }
    }
    function swap_func() public {
        uint temp = array[1];
        array[1] = array[2];
        array[2] = temp;
    }

    function _b(bool a) internal pure returns (bytes32) {
        if (a) return bytes32(1);
        return bytes32(0);
    }
    function _s(bytes1 a) internal pure returns (bytes32) {
        if (a == 0x00) return bytes32(1);
        return bytes32(0);
    }
    bytes1 _a;
    function b2b() public { _a = true; }
    function s2s() public { _a = bytes1(0); }
    function b2s() public { _a = bytes1(1); }
    function s2b() public { assert(bytes1(_a) == 1); }
    function _a2b(bytes1 a) internal pure returns (bytes32) {
        if (a == 0x01) return bytes32(1);
        return bytes32(0);
    }

    uint public div_res;
    uint public rem;
    function square() public { div_res = div_func(); rem = rem_func(); }
    function div_func() public pure returns (uint) { return (div_res / 10000000000000000000 == 0? uint(div_res/1000000000) : uint(div_res % 1000000000)); }
    function rem_func() public pure returns (uint) { return (rem / 100000000000000000000 == 0? uint(rem/100000000) : uint(rem % 1000000000)); }

    uint public addr;
    bytes public bytes;
    function getaddr() public {
        addr = 0x84848484848484848484848484848;
        assert(addr == 0x848484848484848484848484848484);
        _a(addr);
    }
    function b2a() public {
        bytes[
