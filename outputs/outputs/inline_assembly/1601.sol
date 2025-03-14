pragma solidity ^0.8.0;














contract Mutator02 {
uint256 x;
uint256 y;
address a;
constructor() public {
    a = msg.sender;
    x = 3;
    y = 4;
}
function mutate() public {
    x = x+1;
    Imutator _0x1 = Imutator(msg.sender);
    y = y+1;
    a = msg.sender;
}
}
