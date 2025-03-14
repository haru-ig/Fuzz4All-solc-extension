pragma solidity ^0.8.0;
contract Mutated_assembly {

    uint constant oldValue1 = constant1;
    uint constant oldValue2 = constant2;
    uint constant oldValue3 = constant3;
    uint constant oldValue4 = constant4;

    function mutatedAssembly() public {
        variable1 = 1;
        variable2 = 0;
        variable3 = 0;
        variable4 = 0;

        uint constant oldValue1 = constant1;
        uint constant oldValue2 = constant2;
        uint constant oldValue3 = constant3;
        uint constant oldValue4 = constant4;

        uint constant constant1OldValue = oldValue1;
        uint constant constant2OldValue = oldValue2;
        uint constant constant3OldValue = oldValue3;
        uint constant constant4OldValue = oldValue4;

        variable1 += oldValue1;
        variable2 += oldValue1;
        variable3 += oldValue2;
        variable4 += oldValue3;

        uint constant constant1NewValue = constant1 + oldValue1;
        uint constant constant2NewValue = constant2 + oldValue2;
        uint constant constant3NewValue = constant3 + oldValue3;
        uint constant constant4NewValue = constant4 + oldValue4;

        constant1 = constant1NewValue;
        constant2 = constant2NewValue;
        constant3 = constant3NewValue;
        constant4 = constant4NewValue;

        constant1 += constant1OldValue;
        constant2 += constant1OldValue;
        constant3 += constant2OldValue;
        constant4 += constant2OldValue;
    }
}

pragma solidity ^0.8.0;
contract Equivalent_assembly {

    uint constant constant1 = 10;
    uint constant constant2 = 11;
    uint constant constant3 = 12;

    function equivalent() public pure returns (uint) {
        uint returnValue = constant1;
        return returnValue;
    }
}

pragma solidity ^0.8.0;
contract Mutated_assembly {

    uint constant oldValue1 = constant1;
    uint constant oldValue2 = constant2;
    uint constant oldValue3 = constant3;

    function mutatedAssembly() public {
        variable1 = 1;
        variable2 = 0;
        variable3 = 0;
        uint returnValue = oldValue1;
        uint newValue = oldValue2;

        variable1 += oldValue1;
        variable2 += oldValue1;
        variable3 += oldValue2;

        uint constant oldValue1New = oldValue1 + newValue;
        uint constant oldValue2New = oldValue2 + newValue;
        uint constant oldValue3New
