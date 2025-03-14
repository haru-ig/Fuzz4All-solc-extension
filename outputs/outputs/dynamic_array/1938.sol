pragma solidity ^0.8.0;
library SemanticallyEquivalentArrayAssignment {
    uint8[] public field;
    constructor() public {
        field = new uint8[](5);
        field[0] = 1;
        field[1] = 2;
        field[2] = 3;
        field[3] = 4;
    }
}


library SemanticallyEquivalentDynamicallySizedArrayCopyAssignment {
    uint8[10] public field;
    constructor() public {
        field = new uint8[](3);
        field[0] = 1;
        field[1] = 2;
        field[2] = 3;
    }
}

pragma solidity ^0.8.0;
library SemanticallyEquivalentArrayCopyAssignment {
    uint8[] public field;
    constructor() public {
        field = new uint8[](3);
        field[0] = 1;
        field[1] = 2;
        field[2] = 3;
    }
}
address adr1;
uint [] memory a1;
uint [] storage s1;
constructor() public {
    adr1 = payable(address(new SemanticallyEquivalentDynamicallySizedArrayAssignment()));
    a1 = new uint[](1);
    for(uint i=0; i<1;i++){
        a1[i] = 10;
    }
    s1 = a1;
    s1[0] = 8;
}
