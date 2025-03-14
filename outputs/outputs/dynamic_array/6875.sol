pragma solidity ^0.8.0;
contract Test {
    struct Struct {
        uint256 _x;
    }

    function func(Struct memory _s) public {
        _s.x += 1;
    }
}
