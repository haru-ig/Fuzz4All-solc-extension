pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E;
    mapping(uint => uint[]) x;
    function f() public {
        c = 1;
        E += 1;
        for (uint i = 0; i < 8; i++)
            if (i >= 2) {
                uint t = 0;
                t += x[i][0];
                t += x[i][1];
                x[i][0] = t;
            } else {
                x[i].push(2);
            }
    }
}
