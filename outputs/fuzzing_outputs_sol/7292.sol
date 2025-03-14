pragma solidity ^0.8.0;
contract FallbackExample {
    address public value;
    constructor() {
        value = address(this);
    }
    function test() public payable {
        assembly {
            let ptr := mload(0x40)
            let _copy := and(gas, 0xffffffffffffffff)
            mstore(ptr, _copy)
            let _copy := add(ptr, 1)
            mstore(0xd0, ptr)
            _call{value:0}(add( ptr, 32 ), 0, ptr, 32)
        }
    }
}
