pragma solidity ^0.8.0;
contract D {
    uint public c;
    uint public D;
    mapping(uint => uint[]) x;
    function f() public {
        for (uint i = 0; i < 8; i++) {
            x[i] = new uint[](1);
            x[i][0] += 1;
            D += 1;
            c++;
        }
    }
}
