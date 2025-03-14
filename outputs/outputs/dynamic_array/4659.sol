pragma solidity ^0.8.0;
contract IsolateData2 {
    IsolateData2(uint a) { emit("IsolateData2() executed with a: ", a); }
    function set1(uint x) public { emit("IsolateData2.set1() executed with x: ", x); a = x; }
    address public a;
}
