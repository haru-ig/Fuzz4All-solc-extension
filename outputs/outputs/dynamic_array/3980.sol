pragma solidity ^0.8.0;
contract C {
    uint[] public p;
    function f() public {
        p.push(0);
        p.push(1);
    }
}









contract C {
    uint[] public p;
    uint[] public q;
    function f() public {
        p.push(0);
        p.push(1);
        q.push(0);
        q.push(1);
    }
}
