pragma solidity ^0.8.0;
contract SemanticEvidentChanges3 {
    function f() public {
        uint256 x;
        x = uint256(1);
    }
}
contract SemanticEvidentChanges4 {
    function f() public {
        uint256 x;
        x = 1;
    }
}
contract SemanticEvidentChanges5 {
    function f() public {
        uint256 x;
        x = 1U;
    }
}
contract SemanticEvidentChanges6 {
    function f() public {
        uint256 = 1;
    }
}
contract SemanticEvidentChanges7 {
    function f() public {
        uint256 x;
        x = uint256(1);
    }
}
contract SemanticEvidentChanges8 {
    function f() public {
        uint256 x;
        x = uint256(1);
    }
}
contract SemanticEvidentChanges9 {
    function f() public {
        uint256 x;
        x = uint256(1);
        x = uint256(uint8(1));
    }
}
contract SemanticEvidentChanges10 {
    function f() public {
        uint256 = 1;
    }
}
contract SemanticEvidentChanges11 {
    function f() public {
        uint256 = 1;
    }
}
contract SemanticEvidentChanges12 {
    function f() public {
        uint256 x;
        x = 1437013279U;
        x = 1;
        x = uint16(102);
    }
}
contract SemanticEvidentChanges13 {
    function f() public {
        uint256 x;
        x = uint64(uint8(1), uint8(2));
        x = uint256(uint8(1), uint16(2), uint8(1), uint16(2));
    }
}
