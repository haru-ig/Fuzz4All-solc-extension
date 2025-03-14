pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentWithAssignment {
    uint8[3] public fieldBinary;
    constructor() public {
        fieldBinary = [0, 1, 2];
    }
    function BinaryArrayWithAssignment() public returns(uint8) {
        return fieldBinary[3];
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentWithAssignmentNoError {
    uint8 public fieldBinary;
    constructor() public {
        fieldBinary = 4;
    }
    function BinaryArrayWithAssignment() public returns(uint8) {
        return fieldBinary;
    }
}

pragma solidity ^0.8.0;
address public holder;
contract SemanticallyEquivalentNestedDynamicArray {
    struct Struct {
          uint8 field;
          uint8 nestedField;
    }

    struct Struct2 {
          uint8 field;
    }

    struct Struct3 {
        Struct struct1;
        Struct2 struct2;
    }

    struct Struct4 {
        Struct struct1;
        Struct3 struct3;
    }

    struct Struct5 {
        uint8 field;
    }

    function nestedDataStruct() public returns (Struct3 memory) {

        Struct3 memory nestedData = Struct3( Struct4(Struct2(4)), Struct3(Struct2(5), Struct4(Struct2(6))));
        return nestedData;
    }
}
