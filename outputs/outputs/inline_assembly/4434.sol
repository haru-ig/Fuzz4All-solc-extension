pragma solidity ^0.8.0;
contract Emulator8 {
    uint x;
    function init() public {
        x = 41;
    }
    function add(uint x) public {
        uint ret = x+4;
        write();

        ret;
        x;
    }
    function write() public memory {}
}
contract Emulator11 {
    address[] a1;
    function init() public {
        a1.push(msg.sender);
    }
    function add(address x) public {
        a1.push(x);
    }
    function get() public {
        a1[0];
        a1.push(msg.sender);
    }
    function get_count() public view returns(uint) {
        return a1.length - 1;
    }
}
contract Emulator12 {
    uint public x;
    uint public a;
    uint[] public xarr;
}
contract Emulator44 {
    address owner;
    function init(address _owner) public {
        owner = _owner;
        emit OwnerSet(_owner);
    }
    event OwnerSet(address value);
}
contract Emulator45 {
    struct A {
        uint val;
        uint flag;
    }
    uint[] x;
    A[] xarr;
    A _a;
    function init() public {
        x.push(10);
        xarr.push(A(0, 1));
        _a = A(0, 1);
    }
    function poparr() public {
        xarr.length;
        _a = A(0,0);
    }
    function popa() public {
        x.length;
        _a = A(0,0);
    }
    function popa_0() internal pure returns (A _a) {
        return A(0, 0);
    }
    function pusha() internal returns (uint) {
        return 0;
    }
    function pusharr() internal {
        xarr[xarr.length] = A(0, 1);
    }
    function pusha_0() internal {
    }
}
contract Emulator20 {
    string[] x;
    uint[] xarr;
    uint _x;
    uint _a;
    function init() public {
        _x = 1;
        _a = 1;
    }
    function poparr1() public {
        xarr.length;
        x.length;
        x.length - _a;
        a = 0;
    }
    function popx() public {
        _x = 0;
    }
    function popx_0() internal pure returns (uint x) {
        return 0;
    }
    function pushx() internal {
