pragma solidity ^0.8.0;
contract Mutate {
    uint internal constant _1 = uint(1);
    uint internal constant _2 = uint(2);
    uint internal constant _3 = uint(3);
    uint internal constant _4 = uint(4);
    uint internal constant _5 = uint(5);
    uint internal constant _6 = uint(6);
    uint internal constant _7 = uint(7);
    uint internal constant _8 = uint(8);
    uint internal constant _9 = uint(9);

    uint internal constant array_length = uint(10);
    uint internal constant value = uint(100);

    uint internal array_array_index[array_length][array_length]
        private array;

    uint internal array_max;

    modifier only_mut()
    {

        uint mut flag;
        assembly {
            flag := mload(add(0x04, _returnData))
        }
        flag &= (uint(1) << 30);
        if (flag == 0x00) {
            _;
        } else {

            revert();
        }
    }

    modifier only_array()
    {

        uint flag;
        assembly {
            flag := mload(add(0x04, _returnData))
        }
        flag &= (uint(1) << 30);
        if (flag == 0x00) {
            _;
        } else {

            revert();
        }
