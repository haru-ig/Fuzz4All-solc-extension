pragma solidity ^0.8.0;
contract Compatible_DynamicArrayType {
    uint256 x;
    constructor() public {
        x = 2;
    }
    function Test() public {
        uint256 y;
        for (uint i = 0; i < x; i = i + 1) {}
    }
}
contract EfficientDynamicArrayType_Compatible {
    uint256 x;
    constructor() public {
        x = 2;
    }
    function Test() public {
        uint256 y;
        for (uint i = 0; i < x; i += 1) {}
    }
}
contract Compatible_DynamicArrayType_Efficient {
    uint256 x;
    constructor() public {
        x = 2;
    }
    function Test() public {
        uint256 y;
        for (uint i = 0; i < x; i = i + 1) {}
    }
}
