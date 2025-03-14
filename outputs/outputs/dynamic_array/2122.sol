pragma solidity ^0.8.0;
contract MutatedNestedDynamicallySizedNestedArrayAssignment_3 {
    uint256[] public parentArray;
    uint256[][2] public nestedArray;
    uint256[] public staticChildArray;
    constructor() public {}

    function mod(uint256[] memory arr, uint256 idx, uint256 newVal, uint256 val) private returns(uint256) {

        nestedArray[arr[idx]][1] = uint256(nestedArray[arr[idx]][1]) - 1;

        require(nestedArray[arr[idx]][1] == uint256(nestedArray[arr[idx]][1]));

        require(parentArray[idx] == 0);

        uint256[] memory newArray = new uint256[](parentArray.length + 1);
        newArray[0] = val;
        for (uint256 j = 0; j <  parentArray.length; j++) {
            newArray[j+1] = parentArray[j];
        }
        if (parentArray.length!=0) {

            uint256 val0 = newArray[parentArray.length];
            newNestedArray[arr[idx]].push(uint256(val256(val, val0)));
            newArray[parentArray.length] = val256(val0, val);
        }

        parentArray[idx] = newVal;
        return val25
