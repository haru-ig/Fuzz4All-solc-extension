pragma solidity ^0.8.0;
contract Test {
    uint constant A = 1;
    constructor() public { }
    function A() public pure returns(uint) {
        return A;
    }
    function B() public pure returns(uint) {
        return A;
    }
    function NewA() public pure returns(uint) {
        return A + 1;
    }
    function AAndB() public pure returns(uint) {
        return A & B;
    }
    function AOrB() public pure returns(uint) {
        return A || B;
    }
    function MinA() public pure returns(uint) {
        return A < B? A : B;
    }
    function MaxA() public pure returns(uint) {
        return A > B? A : B;
    }
    function SumA() public pure returns(uint) {
        return A + B;
    }
    function ArrayLength() public pure returns(uint) {
        return A;
    }
    function ArrayLengthMinusOne() public pure returns(uint) {
        return A -1;
    }
    function ArrayOneToLength() public pure returns(uint) {
        return uint(A);
    }
    function ArrayOneToLengthTwo() public pure returns(uint) {
        return uint(A) + uint(B);
    }
    function GetMaxInt() public pure returns(uint) {
        require(A < B, "Incorrect condition");
        return uint(A);
    }
    function IncrementA() public pure {
        A = A + 1;
        require(A == uint(A) + uint(1), "Incorrect condition");
    }
    function IncrementAWithoutRequire() public pure {
        A = A + 1;
    }
    function CompareAWithBWithoutRequire() public pure returns(bool){
        return A == uint(A) + uint(B);
    }
    function ComparesTwoAWithB() public pure returns(bool) {
        return A == B;
    }
    function ComparesTwoAWithBWithoutRequire() public pure returns(bool) {
        return A == B;
    }
    function GetMinInt() public pure returns(uint) {
        return A <= B? A : B;
    }
    function GetMaxInt2() public pure returns(uint) {
        return A >= B? A : B;
    }
    function IncrementBWithoutRequire() public pure {
        B = B + 1;
    }
    function IncrementAWithBWithoutRequire(uint x) public pure {
        A = x + 1;
    }
    function IncrementABlockWithoutRequire() public pure {
        for (uint i = 0; i < A; i = i + 1) {
            A = A + 1;
        }
    }
    function IncrementABlock() public pure {
        for (uint i = 0; i < A; i = i + 1) {
            A = A + 1;
        }
    }
    function TestContract() public pure returns(uint){
        if (A > 7 && A <= 8) {
            return uint(A) + uint(7);
        } else {
            if (A < 0) {
                return uint(A) + uint(1);
            } else {
                return uint(A) + uint
