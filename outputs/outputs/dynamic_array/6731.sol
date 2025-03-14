pragma solidity ^0.8.0;
contract T10FC_call_data_array2b {
    struct EmptyStruct{ uint a; uint b; struct EmptyStruct bbb{}; }
    uint public val = 5;
    EmptyStruct[] public addresses;
    uint[16][16] public empty4;
    uint[16][16] public empty3;
}
