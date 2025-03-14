pragma solidity ^0.8.0;
contract test11
{
    address x;
    bytes[] public initialDynamicValue;
    bytes[] public dynamicArray1;

    bytes[] public dynamicArray2 = new bytes[](9){""};
    bytes[] public dynamicArray3 = new bytes[](9,1);
    bytes[] public dynamicArray4 = new bytes[](9)[];
    bytes[] public dynamicArray5 = new bytes[](132);

    constructor()
    {
        initialDynamicValue = new bytes[](7);
        initialDynamicValue[0] = "3";
        initialDynamicValue[1] = "8";

        bytes[9] memory initialDynamicValue2;
        initialDynamicValue2[1] = "8";
        initialDynamicValue2[9] = "6";

        bytes[9][3] memory initialDynamicValue3;
        initialDynamicValue3[4] = "1234567";


    }

    function updateDynamicValues(bytes[] memory newArray) public{
        initialDynamicValue = newArray;
    }





    function addDynamicValue(bytes memory newElement) public{
        dynamicArray1.push(newElement);
    }

    function addDynamicArray(bytes[] memory newArray) public{
        dynamicArray2 = newArray.concat(dynamicArray2);
        dynamicArray3 = newArray.concat(dynamicArray3);
    }
}
