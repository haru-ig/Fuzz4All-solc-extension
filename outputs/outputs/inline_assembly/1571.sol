pragma solidity ^0.8.0;
contract Equivalent {
uint256 x;
address a;
uint256 t;
constructor() public {
    x = 1;
    t = 6;
    a = msg.sender;
}
function mutate (uint256 _h) public {
    if(t>=3){
        a=a;
    }
    t+=_h;
    x=x+1;
}
}
