pragma solidity ^0.8.0;
contract R3 {
        uint a;
        uint b;
    mapping(address => uint) balances;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public {
        uint temp = a;
        a = b;
        b = temp;
    }
    function get() public view returns (uint) {
        uint m = 20;
        return m + m*m - a + a + b;
    }
}

pragma solidity ^0.8.0;
contract R2 {
    function swap() public {}
}


pragma solidity ^0.8.0;
contract R1 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public {}
    function get() public view returns (uint) {
        uint m = 20;
        return a + b*(m + b*m - a);
    }
}

contract C {
    function f() public pure {
        emit LogEvent("LogEvent 1", 1);
        emit LogEvent("");
        emit LogEvent("Test", 0);
        emit LogEvent("", 2);
        emit LogEvent(address(this), 3);
    }
    function LogEvent(string calldata s) public pure {
        address self = address(this);
        address caller = msg.sender;
        assert(self == caller);
        require(s!= "");
        require(s!= "Test");
        emit LogEvent(s, 5);
    }
    function LogEvent(string memory s, uint i) public pure {
        address self = address(this);
        address caller = msg.sender;
        assert(self == caller);
        require(s!= "");
        require(i == 111);
        emit LogEvent(s, i);
    }
}

contract Test {
    function test() public {
        uint val = 100;
        val += val;
        uint a = 0;
        uint y;

        uint x = a;
        y = a;

        uint x1 = ++a;
        y = x1;

        uint x2 = x --;
        y = x2;

        uint x3x2 = x*(x/2);
        x3x2 -= x3x2 << 1;
        y = x3x2;

        uint x4 = ++x; ++x1; x2 = x--;
        x2 = x1 || x2;
        y = x4 + x
