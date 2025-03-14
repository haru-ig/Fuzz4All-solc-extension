pragma solidity ^0.8.0;
struct MyData {
    uint[11] bbb;
}
function f(MyData memory data) {
    data.bbb[4] += 1;
    data.bbb[5] -= 1;
}


uint public constant num = 100;

uint public constant value1 = 666;
mapping (uint => uint) private m;
