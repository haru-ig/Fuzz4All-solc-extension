pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYulWithSemantics {
address constant ZERO = address(0);
address constant ONE = address(1);
address constant TWO = address(2);
bytes32 SELFMODULUS_NAME = keccak256('selfmodulus256');
bytes32 FACTOR_NAME = keccak256('factor256');

constructor() {}

function change1 (address a) public {
    assembly {
        _ = SELFMODULUS_NAME
        a := mul(a, SELFMODULUS_NAME)
        _ = SELFMODULUS_NAME
        a := add(a, a)
        _ = SELFMODULUS_NAME
        a := add(a, a)
        _ = SELFMODULUS_NAME
        a := mul(a, SELFMODULUS_NAME)
        _ = SELFMODULUS_NAME
        a := mul(a, SELFMODULUS_NAME)
        _ = SELFMODULUS_NAME
        a := add(a, a)
    }
    assembly {
        _ = FACTOR_NAME
        a := div(a, FACTOR_NAME)
        b := div(b, FACTOR_NAME)
        a := div(a, FACTOR_NAME)
        a := add(a, a)
        b := div(b, FACTOR_NAME)
    }
    assembly {
        _ = SELFMODULUS_NAME
        c :=
