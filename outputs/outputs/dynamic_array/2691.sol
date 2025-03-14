pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35 {
    uint x;
    uint[9] y;
    int z;
    constructor() public {
        x = 26;
        y[0] = x + 1;
        z -= 99;
        x *= 10;
        x *= 10;
        x *= 10;
        x *= 10;
        x *= 10;
        x *= 10;
        x *= 10;
        x *= 10;
        x *= 10;
        x *= 10;
        x *= 10;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36 {
    uint[9] y;
    uint z;
    constructor() public {
        y[0] = 26;
        z -= 99;
    }
}

pragma solidity ^0.7.0;
contract SemanticEquality_ArrayMutations37 {
    uint[6] x;
    uint[7] y;
    uint f(uint x) public pure returns (uint){
        return x * x * x * x * x * x * x * x;
    }
    constructor(uint[] memory) public {
        x = [2, 4, 6, 8, 10, 12, 14];
        for (uint i = 0; i < 7; i++) {
            y[i] = f(x[i]);
        }
    }
}

pragma solidity ^0.7.0;
contract SemanticEquality_ArrayMutations38 {
    struct MyClass {
        uint x;
        uint[5] y;
        uint z;
        constructor (uint z_,uint x) public {
            z = z_;
            x = x;
            y[1] = x * x * x;
            y[3] *= x;
        }
    }
    uint x;
