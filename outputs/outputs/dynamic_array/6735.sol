pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T0F9B_call_data_array {
    uint public val;
    bytes public empty;
    bytes public empty2;
    bytes4[2] public call1;
    bytes4[2] emptyD;
    bytes4[2] call1Empty;
    bytes[] empty3;
    bytes[] emptyArray;
}

contract Main {
    function T0F9A_call_data_array()public{
        T0F9B_call_data_array storage T0F9 = T0F9B_call_data_array(0x2040);
        T0F9.empty[0] = "ABC1";
        T0F9.zero[0] = "00";
        T0F9.one[0] = "11";
        T0F9.empty2[0] = "ABC2";
        T0F9.empty2[1] = "ABC2";
        T0F9.empty3[0] = "ABC3";
        T0F9.empty3[1] = "ABC3";
        T0F9.addresses[0]  = address(this);
        T0F9.addresses[1]  = address(this);
        T0F9.call1[0].setEmpty();
        T0F9.call1[0].reassign(bytes4(127),"abc");
        T0F9.call1[0].reassign("abc");
        T0F9.call1[0].setBytes4(bytes4(254));
        T0F9.call1[0].setBytes4(bytes4(0));
        T0F9.call1[1].resize(1);
        T0F9.call1[1].setEmpty();
        T0F9.call1[1].reassign("abc");
        T0F9.call1[1].setEmpty();
        T0F9.call1[1].reassign(bytes4(128));
        T0F9.call1[1].setArray(bytes4[2](bytes4(128), bytes4(254)));
        T0F9.call1[1].push(bytes4(1));
        T0F9.call1[1].resize(2);
        T0F9.call
