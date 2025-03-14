pragma solidity ^0.8.0;
contract Mutant {
uint256 x;
uint256 y;
address a;
uint256 y1;
uint256 d;
uint256 t;
constructor (uint256 c, uint256 e, uint256 d) public {
    y = 1 + c;
    t = e;
    d = d;
}
function mutate (uint256 h) public {
    d=h;
    y1=d;
    if (y<y1){
        d--;
    }
    if (y==y1){
        y=1+y;
        d=1+d;
    }
    d--;
    y+=c_init;
}
}
