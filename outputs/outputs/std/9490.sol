pragma solidity ^0.8.0;
contract Mutate4 {
    struct Struct {uint x; uint y; uint z;}
    function setstruct(Struct memory newstruct)public{
        x = newstruct.x;
        y = newstruct.y;
        z = newstruct.z;
    }
}
