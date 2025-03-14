pragma solidity ^0.8.0;
contract EvidentChanges {
    uint128 x;
    function f() public {
        x = 1;
    }
}

pragma solidity ^0.8.3;
contract Test {
    NonEvidentChanges x;
    EvidentChanges y;
    uint8 x;
    uint128 y;
    function f() public {
        x = 1;
        y = 2;
    }
}
contract Test2 {
    NonEvidentChanges x;
    EvidentChanges y;
    uint8 x;
    uint8 y;
    function f() public {
        x = 1;
        y = 2;
    }
}
contract Test3 {
    uint8 x;
    uint128 y;
    uint8 x;
    uint128 y;
    function f() public {
        x = 1;
        y = 2;
    };
}
contract Test4 {
    uint128 x;
    uint8 x;
    uint128 y;
    uint128 y;
    function f() public {
        x = 1;
        y = 2;
    }
}
contract Test5 {
    uint32 x;
    uint16 x;
    uint16 x;
    uint16 y;
    uint16 z;
    function f() public {
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        y = 2;
        y = 2;
        y = 2;
        y = 2;
        y = 2;
    }
}
contract Test6 {
    uint32 x;
    uint32 x;
    uint32 x;
    uint32 x;
    uint32 x;
    uint32 x;
    uint32 y;
    uint32 z;
    function f() public {
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        y = 2;
        y = 2;
        y = 2;
        y = 2;
        y = 2;
        y = 2;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        x = 1;
        y = 2;
        y = 2;
        y = 2;
        y = 2;
        y = 2;
        y = 2;
    }
}
