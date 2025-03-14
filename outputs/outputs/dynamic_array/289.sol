pragma solidity ^0.8.0;
contract D10 {
    uint256 a;
    constructor() public {
        a = 5;
    }
    function g(uint256 i, uint256 x, uint256 y) public {
        for(uint256 i = 0 ; i < 4 ; i = 100) {
            y *= a;
        }
    }
}

pragma solidity ^0.8.0;
contract D11 {
    uint256 a;
    uint256 b;
    constructor() public {
        b = 100;
        a = b;
    }
    function g(uint256 x, uint256 y, uint256 z) public {
        for(uint256 i = 0 ; i < 4 ; i = 100) {
            a = 5*x + 10*y + z;
            y *= a;
        }
    }
}

pragma solidity ^0.8.0;
contract D12 {
    uint256 a;
    uint256 b;
    uint256 c;
    constructor() public {
        a = 50;
        b = 5;
        c = 10;
    }
    function g(uint256 x, uint256 y, uint256 z, uint256 w, uint256 u, uint256 v) public {
        for(uint256 i = 0 ; i < 4 ; i = 100) {
            u = x + b + c + w;
            a = uint16(v) * uint16(y) * uint16(z) * uint16(u);
            y *= v;
            z *= w;
            w *= u;
        }
    }
}
}
