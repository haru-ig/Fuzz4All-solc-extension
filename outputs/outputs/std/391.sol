pragma solidity ^0.8.0;
contract Create {
    struct S{
        uint x;
        uint y;
        uint z;
    }
    function create(S memory b) public {
        b.x = 234122;
        b.y = 5312345222;
        b.z = 42424222;
    }
    function show(S memory b) public view {
        selfdestruct(b.x);
    }
}
