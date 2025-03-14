pragma solidity ^0.8.0;
contract Test67 {
    struct State {
        uint64[] memory x;
        mapping(uint64 => bool) isPresent;
        uint[15] memory f;
        uint64 i64;
    }
    function foo(State[] memory x) public {
        x[0].x.push(64);
    }
}
pragma solidity ^0.8.0;
