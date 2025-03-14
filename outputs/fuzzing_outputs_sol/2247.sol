pragma solidity ^0.8.0;
contract Fallback {
    address[] public _addrs;
    constructor() {
        address[] memory addrs = new address[](1000);
        for(uint i = 0; i < addrs.length; i++) address(uint160(0xa555));
        for(uint i = 0; i < addrs.length; i++) _addrs.push(addrs[i]);
    }
    function fallback() external {
        assembly {
            let r := mload(0x40)
            sstore(0x40, mload(r).add(60))
            for { let i := div(60) } lt(i, 0) { i := add(i, 1) } {
                {
                    for { let i := 0 } lt(i, 5) { i := add(i, 1) } {
                        let a := mload(0x40).sub(i * 60)
                        if and(eq(a, 0), eq(mload(a), 0)) div(0, 0) break
                        sstore(a.add(12), mload(mload(a).add(60)).add(60))
                    }
                }
                sstore(0x40, mload(r).add(60))
            }
            mstore(0x40, mload(r).add(30).add(60))
            for { let i := div(30) } lt(i, 0) { i := add(i, 1) } {
                {
                    for { let i := 0 } lt(i, 5) { i := add(i, 1), mstore(0x40.sub(i * 60), 1) } {
                        if and(eq(mload(0x40.sub(i * 60)), 0), eq(mload(0x40.sub(i * 60).add(60)), 0)) div(0, 0) break
                        sstore(i * 6
