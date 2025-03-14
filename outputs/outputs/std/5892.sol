pragma solidity ^0.8.0;
contract SemanticEvidentChanges3 {
    function f() public {
        uint256 x = 0x1;
    }
}
contract SemanticEvidentChanges4 {
    function f() public {
        uint256 x = 0x1;
    }
    function f2() public {
        uint256 x;
        x = 2;
        uint256 y;
        _ = 1;
        x = _ + 1;
    }
}
contract SemanticEvidentChanges5 {
    function f() public {
        uint256 x = 0x1;
        _ = 1;
    }
}
contract SemanticEvidentChanges6 {
    function f() public {
        uint256 x;
        x;
        uint256 y;
        _ = 1;
        x = _ + 1;
    }
}
contract SemanticEvidentChanges7 {
    function f() public {
        uint256 x = 0x1, y = 0x1;
        x = ++x;
        y = y << 0x1;
    }
}
contract SemanticEvidentChanges8 {
    function f(uint256 x) public {
    }
}
contract SemanticEvidentChanges9 {
    function f(uint256 a) public {
    }
}
contract SemanticEvidentChanges10 {
    function f() public {
        uint256 x = 0x1, y = 0x1;
        _ += 2;
        y = 0x1;
        x = x + y;
    }
}
contract SemanticEvidentChanges11 {
    function f() public {
        uint256 x, y;
        x = 0x1;
        _ += 0x1;
        x = x + y;
        x = x + y;
        x = x + y;
        x = x + y;
        x = x + y;
        x = x + y;
        y = 0x1;
    }
}
contract SemanticEvidentChanges12 {
    function f() public {
        uint256 x, y;
        x = 0x1;
        uint256 v;
        _ -= 0x1;
        v = x + --y * 0x1;
        v = 0x1;
        v = v * v + x;
    }
}
contract SemanticEvidentChanges13 {
    function f(uint256 a) public {
    }
    function f(uint256 b) public {
    }
    function f(uint256 c) public {
    }
    function f(uint256 d) public {
    }
}
contract SemanticEvidentChanges14 {
    uint256 public flag = 0x1;
    uint256 private _flag;
    function f(uint256 a) public {
        flag = a;
