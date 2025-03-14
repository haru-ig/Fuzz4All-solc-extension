pragma solidity ^0.8.0;
uint z = 0;
contract C {
    struct M { uint z; }
    M memory _x;
    M memory _y;
    function set(M memory _x) public {
        M memory _y;
        _y = _x;
        _x = _y;
        bytes memory memorybytes1 = new bytes(1);
        bytes memory memorybytes2 = new bytes(1);
        _x.z = 0;
        set(_x);
        add();
        return;
    }
    function add() public {
        M memory _x;
        M memory _y;
        _y = _x;
        _x = _y;
        _x = _x;
        z = 0;
        _x = _x;
        _x = _x;
        uint _z = 0;
    }
}
