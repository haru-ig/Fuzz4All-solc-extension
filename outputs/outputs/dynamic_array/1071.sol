pragma solidity ^0.8.0;
contract MutatingReturnsArraysNullPointer {
    function add84(uint256 x) pure public returns (uint256 z) { z = x + 84; return z; }
    uint256[3] private _uint256ArraysWithNullPointerForReason;
    mapping(uint256 => uint256) private _uint256WithNullPointer;
    uint256[3] private _uint256;
    event SetReturnArrays(uint256[] _uint256, uint256[] _uint256WithNullPointer);
}

pragma solidity >=0.8.0;

contract ThrowingConstructorTest {
    function createInstance() public throws {
    }
}
/* This test is checking for an invalid state transition that can result
 * in a failure to add a non-null element into a non-null array. Without throwing a state exception, it would
 * lead to two arrays containing the same element. This is a valid case but the ABI allows this:
 *   {
 *     "constant":true,"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"}
 * We need
