pragma solidity ^0.8.0;
struct S{
    uint a;
    uint b;
}
contract R{
    uint[] public arr;
    mapping (uint => S) public map;
    function f() public {
        arr.push(0);
        arr.push(1);
        S memory o = map[0];
    }
}
