pragma solidity ^0.8.0;
contract SemanticMutation11 {
    function test0()
        public
        pure
        returns (mapping(bytes32 => uint128))
    {
        bytes32[10] memory x;
        mapping(bytes32 => uint128)[10][10] memory y;
        return 0;
    }
}
function f(uint160) pure { }
function f() pure external returns(uint160) { return 1; }
