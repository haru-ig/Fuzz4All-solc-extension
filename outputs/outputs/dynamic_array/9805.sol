pragma solidity ^0.8.0;
contract SemanticTest_v3 {
    uint[] public x;
    constructor() public {
        x[2] = 3;
        x.push();
        x[20] = 4;
        x[0x10] = 40;
    }
}

pragma solidity ^0.8.0;
contract SemanticTest_v2 {
    uint[] public x = [0];
    constructor() public {
        x[20] = 4;
    }
}

pragma solidity ^0.8.0;
contract SemanticTest_v1 {
    uint[] public x = [0,1,2,3,4];
    constructor() public {
        delete x[1];
        delete x[3];
        delete x[4];
    }
}


contract SizingTest {
    struct Foo {}
    uint[] public x;
    bytes public y;

    uint x1(uint offset) {
        return x[offset];
    }
    uint x2(uint i, uint offset) {
        return x[i][offset];
    }
    uint x3(uint i, uint j, uint offset) {
        return x[i][j][offset];
    }
    uint x4(uint i, uint j, uint k, uint offset) {
        return x[i][j][k][offset];
    }

}
