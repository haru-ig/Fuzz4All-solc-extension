pragma solidity ^0.8.0;
contract MutatedDynamicArraysWithNested {
    uint256[2] nestedStruct;
    uint256[2] nestedStructInitial;
    function nestedAdd(uint256 value) public {
        nestedStruct[0].push(value);
        nestedStructInitial[0].push(0);
        nestedStruct[1].push(0);
        nestedStructInitial[1].push(0);
    }
}


pragma solidity ^0.4.25;
contract MutatedDynamicArraysWithNested {
    uint256[] nestedStruct;
    uint256[] nestedStructInitial;
    function nestedAdd(uint256 value) public {
        nestedStruct.push(value);
        nestedStructInitial.push(0);
    }
}
