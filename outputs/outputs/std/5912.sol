pragma solidity ^0.8.0;
contract SemanticEvidentChanges6 {
    uint256 x;
    uint256 y;
    uint256 z;
    uint8 c;
    uint128 d;
    uint32 e;
    uint64 f;
    uint192 g;
    address h;
    function setH(address e) public {
        h = e;
    }
    function setH2(uint256 _x) public {
        y = _x;
    }
    function getH() public view returns (address h) {
        h = h;
    }
    constructor() public {
        add(1, 2);
    }
    function add(uint256 _x) public {
        z = _x + 1;
        c = 0;
        c = c.add(2);
        c = 0;
        c = c + 256;
        d = 0;
        d = d * x.add(1);
        d = 0;
        d = d + 256;
        e = 0;
        f = 0;
        g = 0;
        g = g.add(1);
        h = address(1);
        setH2(3);
        c = 0;
        c = c + 256;
    }
}

pragma solidity ^0.8.0;
contract SemanticEvidentChanges7 {
    uint256 x;
    uint256 y;
    uint256 z;
    function setY(uint256 _data) public {
        x = _data;
    }
    function setY2(uint256 _data) public {
        y = _data;
    }
    function setZ(uint256 n) public {
        z = n;
    }
    constructor() public {
        setZ(3);
    }
    function getX() public view returns (uint256 x) {
        x = x;
    }
    function getY() public view returns (uint256 _y) {
        _y = y;
    }
}

pragma solidity ^0.8.0;
contract SemanticEvidentChanges8 {
    uint256 x;
    uint256 y;
    uint256 z;
    function setX(uint256 _data) public {
        y = _data * 2;
    }
    function getX() public view returns (uint256 _x) {
        _x = x * 2;
    }
}

pragma solidity ^0.8.0;
contract SemanticEvidentChanges9 {
    uint256 x;
    uint256 y;
    uint25
