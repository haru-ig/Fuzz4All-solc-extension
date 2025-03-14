pragma solidity ^0.8.0;
contract ArrayMutation {
    uint256 l;

    function ArrayMutation(uint256 _value) {
    l = 9999;
    }

    function test() {
    uint256 k = 999999;
    array[0] = k;

    k = array[0];
    array[0] = m_array;

    array[k] = array[l];
    array[l] = m_array;

    uint256 a = 1;
    uint256 b;
    b = 1;
    uint256[5] array2;
    uint256[7] array3;
    uint256 c = a + b;
    uint256 d;
    d = 1;
    array3 = array;
    array3[k] = array2[l];
    array3[l] = array2[k];
    array2[k] = array2[l];
    array2[l] = array2[0];
    array2[0] = c;

    address[] memory addrs;
    addrs[0] = 0;
    addrs[l] = m_array;
    address[] memory array_addresses = new address[](0);
    array_addresses = addrs;
    array_addresses = new address[](2);
    array_addresses[0] = 0;
    array_addresses[1] = m_array;

    array[0] = 2;
    array[1] = 0;

    array[0] = m_array;
    array[0] = 1;
    array[2] = 1;
    uint256[4] field1;
    field1 = new uint256[](4);
    field1[3] = m_array;
    field1[0] = 3;
    array[0] = field1;

    uint8[4] field2;
    field2 = new uint8[](4);
    field2[2] = m_array;
    field2[1] = 2;
    array[0] = field2;

    uint8[4] field3;
    field3 = new uint8[](4);
    field3[2] = m_array;
    field3[0] = 1;
    field3[1] = 2;
    array[0] = field3;

    uint8[5] field4;
    field4 = new uint8[](5);
    field4[2] = m_array;
    field4[0] = 0;
    field4[1] = 1;
    field4[3] = 2;
    field4[4] = 1;
    array[0] = field4;

    array[0] = l;
    array[0] =
