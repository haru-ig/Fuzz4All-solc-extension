pragma solidity ^0.8.0;
contract O {
    uint public x;
    mapping(uint=>uint[10]) public y;
    function f() public {
        uint a;
        a = y[10][1];
    }
}

pragma solidity ^0.8.0;
contract O {
    uint public x;
    mapping(address=>uint) public y;
    uint a;
    uint[] b;
    function f() public {
        uint c;
        a += 3;
        b.push(c);
        b.push(c);
    }
}
