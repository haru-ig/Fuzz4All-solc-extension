pragma solidity ^0.8.0;
contract MutatedDynamicArrays2 {
    struct Foo { uint256 x; }
    uint256 x = 1;
    function modify(Foo _f) public {
        Foo memory _ff = _f;
        Foo memory _t;
        _t.x = _ff.x;
        _f = _t;
    }
}
