pragma solidity ^0.8.0;
contract C {
    function f() public pure {
        assembly {
			let a := add(1, 2)
			let b := add(a, 0)
			let c := add(a, sub(0, a))
			let bnot := and(uint256(not(a)), uint256(not(a)))
			let addcarryx_u1 := xor(add(sub(c, uint256(10000)), (mload(32(0x5555555555555555555555555555555555555555555555555555555555555))), uint256(sub(uint256(not(a))), uint256(mload(32(0x0)))))
			let mload_0x555555555555555555555555555555555555555555555555555555555555550 := mload(0x555555555555555555555555555555555555555555555555555555555555550)
			let b89 := and(uint256(add(uint256(not(a)), uint256(not(mload(0x9a)))), uint256(mload_0x55555555555555555555555555555555555555555555555555555555555550)))
			let addcarryx_u2 := xor(addcarryx_u1, b89)
			let c := mload_0x555555555555555555555555555555555555555555555555555555555555550
			let d := addcarryx_u2
			let b7787 := and(uint256((not(a) ^ uint256(and(add(add(add(uint256(not(a)), uint256(and(add(uint256(a), uint256(and(add(uint256(a), uint256(and
