pragma solidity ^0.8.0;
contract L50 {
    event Evt(uint);
    struct A { uint x; uint y; }
    constructor() public {
        emit Evt(1);
    }
    modifier modifyCalled { x = x + 2; _; }
    function call() public {
        x = 10;
        A storage a = A(msg.data);
        a.y = a.x;
        a.x = 20;
    }
    function call2() public {
        x = 10;
    }
    function check() public {
        A storage a = A(msg.data);
        require(a.y == 20, "fail");
    }
}
