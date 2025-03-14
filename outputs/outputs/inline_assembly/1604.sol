pragma solidity ^0.8.0;
contract Mutator {
uint256 x;
uint256 y;
address a;
bool constant internal flag = false;
constructor() public {
    a = msg.sender;
    x = 3;
    y = 4;
}
function mutate() public {
    x = x+1;
    y = y+1;
    a = msg.sender;
    if(flag = false) {
      revert();
    }
}
}
contract NoMutator {
uint256 x;
uint256 y;
address a;
constructor() public {
   a = msg.sender;
}
function mutate() public {
    x = x+1;
    y = y+1;
    a = msg.sender;
}
}
