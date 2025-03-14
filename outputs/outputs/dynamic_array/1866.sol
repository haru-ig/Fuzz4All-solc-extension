pragma solidity ^0.8.0;
contract SyntaxicallyEquivalentDynamicarrayWithAssignment {
    uint[] public fieldDynamic;
    constructor() public {
        field(0);
        field(1);
    }
    function field(uint8 x) public returns(uint) {
        field.push(2);
        field.push(3);
        return field[0];
    }
}
contract SemanticallyEquivalentNestedDynamicCalldataArrayAssignment {
    uint[] public fieldDynamicCalldataArray;
    constructor() public {
        field(0);
        field(1);
    }
    function field(uint8 x) public constant returns(uint) {
        fieldCalldataArray.push(0);
        fieldCalldataArray.push(1);
        return fieldCalldataArray[0];
    }
}
pragma solidity ^0.8.0;
contract SyntaxicallyEquivalentNestedDynamicCalldataArrayAssignment {
    uint[] public fieldDynamicCalldataArray;
    constructor() public {
        fieldCalldataArray(0);
        fieldCalldataArray(1);
    }
    function fieldCalldataArray(uint8[255] memory x) public constant returns(uint) {
        fieldCalldataArray[2].push(0);
        fieldCalldataArray[2].push(1);
        return fieldCalldataArray[0][0];
    }
}
