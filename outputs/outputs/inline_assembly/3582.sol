pragma solidity ^0.8.0;
contract SquashGenerationsUsingYulWithoutSemantics {
    mapping (uint256 => uint256) private balances;
    constructor () {
        value1 = value2 = value3 = value4 = value5 = value6 = 3*3 + 2;
        value7 = value15 + 42;
        value8 = value9 + 42;
        uint128 temp1 = 3;
        uint256 a = temp1;
        temp1 = temp1 + 42;
        uint256 b = (temp1 + 882);
        uint256 c = a + b;
        uint256 d = c;
        uint256 e = uint256(a) + b;
        uint256 f = d - (a - d);
    }
    function update (uint128 v) public {
        balances[3
