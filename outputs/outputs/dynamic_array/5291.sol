pragma solidity ^0.8.0;
contract Test31 {
    address a;
    uint256 b;
    function f(uint256 t1, bool t2, uint256[2] memory t3) public pure {a = t1; b = t2; emit g(a,b,t3[0],t3[1]);}
    event g(address addr, bool aflag, uint256 x1, uint256 x2);
}
address a;
uint256 b;
function f(uint256 t1, bool t2, uint256[2] memory t3) public pure {a = t1; b = t2; emit g(a,b,t3[0],t3[1]);}
event g(address addr, bool aflag, uint256 x1, uint256 x2);
