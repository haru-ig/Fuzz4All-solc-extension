pragma solidity ^0.8.0;
contract SemanticTest_v6 {
    uint[] immutable x;
    constructor(uint _y) public {
        require(x.length == 0, "Initial check");
        x = [_y, _y, _y];
        require(x.length == 3, "Second check");
    }
}

pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    struct Struct { uint x; }
    struct Struct2 { uint256 y; }

    uint256[] immutable x;
    uint256 y = 0;
    Struct2 z;
    constructor(uint256 _m) public {
        z = Struct2(_m);
        uint256[2] memory tmp = z.x;
        require(x.length == 3, "Initial check");
        tmp = z.y.x;
        tmp = z.y.y;
        x = [z.x.x, z.x.y, z.y.x, z.y.y];
        require(x.length == 8, "Second check");
    }
    receive() external payable {}
}
