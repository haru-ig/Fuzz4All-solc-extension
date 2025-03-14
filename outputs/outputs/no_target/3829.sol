pragma solidity ^0.8.0;
contract R5 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
    }
    function _swap(uint _x) private {
        uint t = _x;
        _x = a;
        a = t;
    }
    function swap() public {
        _swap(b);
    }
    function get() public view returns (uint) {
        return a + a*a + a*a*a - a - b + b;
    }
}

pragma solidity ^0.8.0;
contract R6 {
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;

    address _owner;
    address _treasury;
        constructor(uint _x) public {
        a = _x;
        b = _x;
        c = _x;
        d = _x;
        e = _x;
        _treasury = msg.sender;
        _owner = msg.sender;
    }
    function swap(uint _x) public {
        a = _x + _x;
        b = _x;
        c = _x + _x*(_x%2==0);
        d = _x*2;
        e = (_x)*(3*_x^(2*_x>=_x%2==0));
        swap(_treasury);
        swap(_owner);
    }
    function get() public view returns (uint) {
        return a + b + c + d + e;
    }
}
