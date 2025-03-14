pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignment {
    uint8[] public fieldBinary2;
    function BinaryArrayWithAssignment() public returns(uint8) {
        for(uint i = 1; i < 10; i++) {
            fieldBinary2.push(1);
            fieldBinary2[i] = 0;
        }
        return fieldBinary2[1];
    }
    constructor() public {
        fieldBinary2;
    }
}

pragma solidity^0.8.0;
contract SemanticallyEquivalentArrayOfEmptyByteArray {
    uint8[] public field;
    constructor() public {
        field;
    }
    function ArrayOfEmptyByteArray() public returns(uint8) {
        return;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentArrayOfEmptyStructs {
    struct Structure {
        uint8 a;
        uint8 b;
    }
    Structure[] a;
    Structure[2] b;
    constructor() public {
        a.push(b);
        a;
    }
    function ArrayOfEmptyStructs() public returns(uint8) {
        return 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentArrayOfEmptyByteArrays {
    uint8[] a;
    uint8 b;
    constructor() public {
        a;
        b;
    }
    function ArrayOfEmptyByteArrays() public returns(uint8) {
        return 1;
    }
}
contract SemanticallyEquivalentArrayOfEmptyArrays {
    uint8 a;
    uint8[] b;
    constructor() public {
