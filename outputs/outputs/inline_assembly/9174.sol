pragma solidity ^0.8.0;
contract A {
    uint constant public _uint32 = 16**60;
    uint constant public _uint64 = uint(16**60) + 15000;
    uint constant constant_arrayuint32 = uint[](uint[](2));
    bytes32[] constant constant_arraybytes32;
    bytes32[][] constant constant_arraybytes32_2d;
    bytes32[] constant constant_bytes32_array;
    address constant constant_arrayaddress =
        contract_address(keccak256
        ("The constant array has the elements 0x00..0xFF"));
    bytes32 constant constant_bytes32_two;
    bytes32 constant constant_bytes32_one;
    uint constant constant_uint32;
    uint constant constant_uint16;
    uint constant constant_uint8;


    bytes constant immutable constant_bytes_one;
    function constfunc() public pure returns (bytes32,uint){}
    function constfunc2() public pure returns (bytes[]){
        bytes[] memory constant bytesarr1;
        bytesarr1.length = 2;
        bytesarr1[0] = "Hello";
        bytesarr1[1] = "Bytes!";
    }

    bytes mutable constant_mutablenullbytes;
    bytes mutable constant_arraybytes;
    bytes[] mutable constant arraybytes2;
    bytes2[] constant arraybytes2_2d;

    function mut_funcs() public pure {
        bytes2[] arraybytes2one;
        arraybytes2one.length = 2;
        arraybytes2one[0] = bytes2(0);
        arraybytes2one[1] = bytes2(1);

        bytes2[] memory arraybytes2two;
        arraybytes2two.length = 2;
        arraybytes2two[0] = bytes2(1);
        arraybytes2two[1] = bytes2(4);

        bytes2[][] memory arraybytes2two_2d;
        arraybytes2two_2d.length = 2;
        arraybytes2two_2d[0] = bytes2[](2);
        arraybytes2two_2d[1
