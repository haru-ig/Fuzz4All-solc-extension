pragma solidity ^0.8.0;
contract Mutator {
function mutate()public{

    x = 3;
    x = 3+x+3;

    x = x+1;
    x = 3;
}
}
