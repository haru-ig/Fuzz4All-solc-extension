pragma solidity ^0.8.0;
contract third6 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = uint(-c) & ~a;
    }
}
contract third7 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = uint(a) | 2 ** 255;
        uint j = uint(b) / uint(b + 1);
    }
}

pragma solidity ^0.8.0;
contract third8 {
    uint a;
    address b;
    uint c;
    address d;
    uint e;
    constructor() public {
        uint i = uint(c) | safeDiv(safeDiv((safeAdd((a) | 1, 5), (b) + (true)) | safeAdd(1, safeDiv((d) | 1, 5)))) |
            uint(-safeAdd(a, 1));
    }

    function safeAdd(uint x, uint y) internal pure returns (uint) {
        uint z = x + y;
        require(x <= 2**256 - 1 && y <= 2**256 - 1, "SafeMath: addition overflow");
        return z;
    }

    function safeDiv(uint x, uint y) internal pure returns (uint) {
        require(y > 0, "SafeMath: division by zero");
        return x / y;
    }
}
contract third9 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = b ^ ~a;
    }
}
contract third10 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = c | (b << 32) | 0x1ffffffffffffff3fffffff9ac;
    }
}
contract third11 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = uint(~c) >> 1;
    }
}

pragma solidity ^0.8.0;
contract third12 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i
