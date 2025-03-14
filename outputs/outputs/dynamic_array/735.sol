pragma solidity ^0.8.0;
contract test279 {
    bool f;
    mapping(uint => uint) g;
    function test(uint _c) public {
        f = g[_c] > 200;
    }
}
