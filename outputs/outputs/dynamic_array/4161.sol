pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E;
    mapping(uint => uint[]) x;
    function f() public {
        for (uint i = 0; i < 8; i++)
            if (i == 1)
                x[i] = new uint[](2);
            else x[i] = new uint[](1);
        c = 1;
        E += 1;
    }
}
