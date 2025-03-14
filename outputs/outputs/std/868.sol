pragma solidity ^0.8.0;
contract MutateTo3
{
function mutate() public pure {
    uint x = 42;
    uint y = 42;
    uint z = 42;
    uint result = x + y * z;
    assembly {




       x:=x+y;
       z:=z+x-y;
       x:=x+z;
    }
}
}
