pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithCalldata {
    uint8 [] public fieldBinary;
    constructor() public {
    fieldBinary = new uint8[](3);
    fieldBinary[0] = 1;
    fieldBinary[1] = 0;
    fieldBinary[2] = 2;
    }
    function BinaryArrayCalldata() public pure {}
    function BinaryArrayCalldata2() public pure {}
}

interface IBinary {
    function read1() returns (uint8);
    function read2() returns (uint16);
}
pragma solidity ^0.8.0;



contract DynamicArrayWithAssignment {
    IBinary[] public field;

    constructor() public {
        field.push(new IBinary());
        field.push(new IBinary());
        field.push(new IBinary());
    }

    function write1(uint8 _x) public {
        this.field[1] = _x;
    }

    function write2(uint16 _x) public {
        this.field[1] = _x;
    }

    function read() returns (uint8[] memory) {
        return this.field;
    }
}
pragma solidity ^0.8.0;



contract DynamicArrayWithAssignmentCalldata {
    IBinary[] public field;
    constructor() public {
        field.push(1);
        field.push(2);
        field.push(3);
    }
    function write1(uint8 _x) public {
        this.field.push(_x);
    }

    function read() returns (uint8[] memory) {
        return this.field;
    }
}
