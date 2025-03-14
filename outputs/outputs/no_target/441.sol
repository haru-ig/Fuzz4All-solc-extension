pragma solidity ^0.8.0;



interface I128_159_0 {
    constructor() external;
    function value() constant returns (uint128 a);
    function increment() returns (uint128 a);
    function decrement() returns (uint128 a);
    function multiply() returns (uint128 a, uint128 b);
    function divide() returns (uint128 a, uint128 b);
    function bitAnd() returns (uint128 a, uint128 b);
    function bitOr() returns (uint128 a, uint128 b);
    function bitXor() returns (uint128 a, uint128 b);
    function shl() returns (uint128 x, uint128 y);
    function shr() returns (uint128 x, uint128 y);
    function bitShiftL() returns (uint128 x, uint128 y);
    function bitShiftR() returns (uint128 x, uint128 y);
    function eq() returns (uint128 a, uint156 b);
    function ne() returns (uint128 a, uint156 b);
    function lt() returns (uint128 a, uint128 b);
    function gt() returns (uint128 a, uint128 b);
    function le() returns (uint128 a, uint128 b);
    function ge() returns (uint128 a, uint128 b);
    function signExtend() returns (uint128 a);
    function staticCast() returns (uint128);
    function dynamicCast() returns (uint128);
}
