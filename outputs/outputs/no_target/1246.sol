pragma solidity ^0.8.0;
contract Injection_04
{
    constructor() public
    {
        uint w1,
       uint w2,
       uint w3;
       (, uint x3, ) = get(w1, w2, w3);
    }
}
