pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicArrayWithAssignment {
    uint8[] public fieldDynamic;
    constructor() public {
        fieldDynamic.push(0);
        fieldDynamic.push(1);
    }
    function DynamicArrayWithAssignment() public returns(uint8) {
        uint8 x = fieldDynamic.length;
        fieldDynamic.push(2);
        uint8 y = fieldDynamic.length;
        bytes memory newArray = new bytes();
        bytes4 function_0x0051_bytes4_51 = bytes4(0x0051);
        newArray[function_0x0051_bytes4_51] = bytes1(uint256(x));
        newArray[75] = bytes1(uint256(y));
        return fieldDynamic[0];
    }
}
