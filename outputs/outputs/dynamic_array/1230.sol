pragma solidity ^0.8.0;
contract ArraysMutator {
    uint[10] b;
    function call(uint a,uint b){b[1]=a}
    uint sum(uint[10] memory v) public view returns (uint c){for (uint i = 0; i < v.length; )c += v[i++];}
    function f(uint a,uint[10] memory v) public {b = a; b[1]=a;}
}
