pragma solidity ^0.8.0;
contract NewStrictConversions {
    function simple_uint() public pure {
        uint y = 10;
        uint z = uint(y);
        y = z;
        uint x = uint(y);
        x = y;
    }
    function simple_string() public pure {
        bytes memory s = "0123456789";
        bytes1 b = s;
        bytes memory x = bytes20(string(uint8(100), "This is a byte string"));
        byte y = s;
        byte z = x + y;
        bytes memory w = string(uint8(10), "This is a string");
        string memory z = string(uint(10), "This is a string");
        bytes memory x2 = string(uint8(255), address(this));
        string memory x2_str = string(uint16(uint(100)), "This is a string");
        bytes memory x2_bytes = string(uint(100), bytes32(100));
        bytes1 y_bytes = bytes1(x2_bytes);
        uint z_uint = uint(bytes1(x_str));
        uint z_uint256 = uint(bytes1(x_str));
        uint z_uint2562 = uint(bytes1(x_str));
        uint z_uint2563 = uint(bytes1(x_str));
    }
    function calldata_string() public pure {
        bytes memory tmp, s, b, x, y, z, w, x2, r, z2, x2_str, r_uint;
        assembly {
            tmp := mload(0x40)
            s := mload(0x40)
            b := mload(0x40)
            x := mload(0x40)
            y := mload(0x40)
            z := mload(0x40)
            w := mload(0x40)
            x2 := mload(0x40)
        }
        r := mload(0x40);
        z2 = z +  x +  z +  x +  w +  r +  bytes1(s);
        x2_str = bytes1(s) + bytes1(s);
        uint r_uint64 = uint(r);
