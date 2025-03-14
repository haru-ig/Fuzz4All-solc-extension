pragma solidity ^0.8.0;
struct S{
    uint a;
    uint b;
}
contract R{
    uint[] public arr;
    mapping (uint => S) public map;
    function f() public {
        arr.push(1);
        arr.push(1);
        map[0] = S(5, 10);
    }
}
