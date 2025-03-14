pragma solidity ^0.8.0;
contract Mutator {
uint256 x;
uint256 y;
address a;
constructor() public {
    a = msg.sender;
    x = 3;
    y = 4;
}
function mutate() public {
    address b = a;
    x = x+1;
    y = y+1;
    a = msg.sender;
}
}


contract Mutator {
uint256 x;
uint256 y;
address a;
address b;
constructor() public {
    a = msg.sender;
    b = msg.sender;
    x = 3;
    y = 4;
}
function mutate() public {
    x = x+1;
    y = y+1;
    a = msg.sender;
}
}


contract Mutator {
uint256 x;
uint256 y;
address a;
address b;
constructor() public {
    a = msg.sender;
    b = msg.sender;
    x = 3;
    y = 4;
}
function mutate() public {
    b = a;
    x = x+1;
    y = y+1;
    a = msg.sender;
}
}


contract Mutator {
uint256 x;
uint256 y;
uint256 z;
address c;
address d;
address e;
address f;
address g;
address h;
constructor() public {
    x = -3;
    y = -2;
    z = 5;
    c = msg.sender;
    d = msg.sender;
    e = a;
    f = msg.sender;
    g = msg.sender;
    h = msg.sender;
}
function mutate() public {
    x = x-5;
    y = y-3;
    z = z+5;
    c = msg.sender;
    d = f;
    e = f;
    f = f;
    g = c;
    h = g;
}
}
