pragma solidity ^0.8.0;

struct MyStruct {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 arr_uint;
    address[] arr_address;
    mapping(uint => address) arr_address_map;
    uint256 larr[4];
    uint256[] rarr;
    uint256[] larr_arr;
    uint256[][] rarr_arr;
    uint256[][] larr_arr_arr;
    uint256[][][] rarr_arr_arr;
    string name;
    mapping(uint => uint[3]) test_map;
}
