pragma solidity ^0.8.0;
contract Test10 {
    uint8[100][] array;
    uint8[3][] arr1;
    constructor() public {
        uint8 mem = arr1[3][62];
    }
}

pragma solidity ^0.8.0;
contract Test15 {
    struct A { uint128 l; }
    uint8 m;
    uint8[] arr;
    constructor() public {
        m = arr[32];
    }
}

pragma solidity ^0.8.0;
contract Test20 {
    uint8[20][] array;
    uint8[64][] arr1;
    constructor() public {
        uint8 mem; uint8 mem1;
        mem = arr1[3][62]; arr1[1][63] = mem;
    }
}

pragma solidity ^0.8.0;
contract Test23 {
    uint8[20][] memory array;
    uint8[64][] memory arr1;
    constructor() public {
        uint8 mem; uint8 mem1;
        mem = arr1[3][62]; mem1 = mem; arr1[1][63] = mem;
    }
}

pragma solidity ^0.8.0;
contract Test30 {
    struct S { bool b; uint8 x; }
    struct S1 { uint8 y; uint16 z; }
    struct S2 { S[] a; }
    struct S3 { S[][] b; bool[][] c; uint16[667][] d; }
    struct S4 { uint8 e; uint16 f; }
    constructor() public {
        S3 memory memoryS3;
        S1 memory memoryS1;
        uint16 memory memory8; uint8 memory mem = memory8; uint16[667][2] memory memory2; uint16[8][8] sMem;
        S2 memory memoryS9; S2 memory memoryS6;
