pragma solidity ^0.8.0;
contract MutatedDynamicArraysWithNested {
    uint256[] nestedStructInitial;
    uint256[] nestedStruct;
    function initNestedWithInitial(uint256[] memory initValues) public {
        nestedStruct = initValues;
        nestedStructInitial = initValues;
    }
    function nestedAdd(uint256 i, uint256 j) public view returns (uint256) {
        (nestedStructInitial[i], nestedStruct[i]) = (nestedStructInitial[i] + j, nestedStruct[i] + j);
        return nestedStructInitial[i];
    }
}
