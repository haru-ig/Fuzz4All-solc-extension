pragma solidity ^0.8.0;
contract Mutate37 {
    uint public a;
    uint public b;
    uint public _x;
    constructor(uint256 x) {
        a = x;
        b = 2;
        _x = a + 2;
    }
    fallback() external {
        _x = a + 2;
    }
}
contract Mutate36 {
    uint public a;
    uint public b;
    uint public _x;
    uint public _y;
    constructor(uint256 x, uint256 y) {
        a = x;
        b = x + (y & 0xffffffff);
        _x = a;
        _y = b;
    }
    fallback() external {
        _x = a + 2;
        _y = _x + 2;
    }
}
contract Mutate35 {
    uint public _x;
    uint public _y;
    uint public _z;
    bool public _q;
    constructor(uint _x) public {
        _x = _x;
        _q = _x >= 3;
        _y = _x + 2;
        _z = a;
    }
    fallback() external {
        _x = _y? a : a + 2;
        _y = _x + _z;
        _z = _q? _y : _y + 2;
    }
}

pragma solidity ^0.8.0;
contract Mutate34 {
    uint public _x;
    address public newAddress;
    constructor(uint _) public {
        _x = _x;
        newAddress = address(new Mutate36(_x));
    }
    fallback() external {
    }
}
contract Mutate33 {
    uint public _x;
    address public newAddress;
    constructor(uint a, uint _) public {
        _x = a;
        _x++;
        newAddress = address(new Mutate36(_x));
    }
    fallback() external {
    }
}

pragma solidity ^0.8.0;
contract Mutate32 {
    uint public _x;
    uint public _y;
    uint public _z;
    uint public _w;
    function test1() public view returns (uint w
