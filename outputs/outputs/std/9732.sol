pragma solidity ^0.8.0;
contract MultiUpdate {
    uint x;
    uint y;
    constructor() {
        y = 0;


        y -= 5;
        y /= 2;
    }
}
pragma solidity ^0.8.0;
contract ArrayTest {
    uint[] public array_uint;
    uint[] memory array_unsafe;
    uint[5][5] public array_2d_uint;
    uint[5][5] memory array_2d_unsafe;
    uint[42] public array_uint_42;
    uint[42] memory array_uint_42_mem;
    constructor() public {
        for (uint i =0; i < 6; ++i) {
            array_uint[i] = i;
        }
        for (uint i = 0; i <= 6; ++i) {
            array_unsafe[i] = i;
        }
        for (uint[5] memory a = [0; 5]; i  <= 5; ++i) {
            array_2d_uint[0][i] = i;
        }
        for (uint[5] memory a = [0; 5]; i <= 5; ++i) {
            array_2d_unsafe.push(i);
        }
        for (uint i = 42; i <= 42+50; ++i) {
            array_uint_42[i - 42] = i;
        }
        for (uint i = 42; i <= 42+50; ++i) {
            array_uint_42_mem.push(i);
        }
    }
}
pragma solidity ^0.8.0;
contract ConvertTest {
    string public strOne = "String One";
    bytes constant strTwo = "0xb4b218fc";
    bytes32 constant intOne = 0x123456789ABCDEF0123456789ABCDEF0123456789ABCD3ABCDE2BADBEEF38;
    bytes32 constant intOne_80 = 0x080403020A09080706050403020100000000000000000000000000000000;
    bytes32 constant byte = "0x09012F5414009898235FE1AF1300";
    bytes constant bytes32bytes32bytes = "1cb0812B1580810b024208C00";
    uint[] public int8_data_1 = [23, 55, 128, 70, 9
