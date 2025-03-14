pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public x = 5;
    mapping (uint => uint) public mapX;
    function test() public {
        uint a = mapX[x];
        mapX[x] = a+1;
        uint b = mapX[x];
        require(a == b);
    }
}
