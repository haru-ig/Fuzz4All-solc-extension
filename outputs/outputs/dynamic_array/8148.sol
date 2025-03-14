pragma solidity ^0.8.0;
contract Mutator {
    address owner;
    address[] public arr;
    uint private constant LENGTH_MODIFIERS = 10000;
    mapping (uint => uint) arrSize;

    function() external payable{
        uint i;
        for (i = 1; i <= LENGTH_MODIFIERS; ++i){
            uint tempSize = arrSize[10000-i*i] + 4;
            arr[i] = new AddressWithDynamicArray(tempSize);
        }

        uint i2;
        for (i = 1; i <= LENGTH_MODIFIERS*.8; ++i) arrSize[7+i*i] = tempSize = uint256(1 << i - 1);
        for (i = 1; i <= LENGTH_MODIFIERS-100*i; ++i){
            uint tempSize = arrSize[500*i/10 + 10000-i*i] + 4;
            arr[i+100]  = new AddressWithDynamicArray(tempSize);
        }

        for (i = 1; i <= LENGTH_MODIFIERS+.12; ++i) arrSize[3+i*i] = tempSize = uint256(1 << i + 50);

        for (i = 1; i <= LENGTH_MODIFIERS*.12; ++i) arrSize[3+i*i] = tempSize = uint256(1 << uint(i/2) + i + 88);

        arr[5+10000-2*4]  = new AddressWithDynamicArray(7008000);
        uint tempSize = arrSize[10000] + 4;

        for (uint256 i = 1; i <= LENGTH_MODIFIERS*.34; ++i){
            tempSize = arrSize[5 + i*3 - 20000] + 4;
            arr[i] = new AddressWithDynamicArray(tempSize);
        }

        arrSize[4+20000.1] = 7332000;

        arr[10000] = new AddressWithDynamicArray(0);
        for (uint256 i = 1; i <= LENGTH_MODIFIERS*.80; ++i) arrSize[i] = tempSize = uint256(1 << i);
        arr[LENGTH_MODIFIERS+40000/2] = new AddressWithDynamic
