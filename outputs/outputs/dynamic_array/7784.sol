pragma solidity ^0.8.0;
contract Test10 {
    uint8 _mem;


    uint8[100] public values = [12,23,34,45];

    constructor()
        public
    {

        _mem = values[23];
    }
}
contract Call11 {
    assembly {
        let ptr := mload(0x40)
        mstore8(ptr, 0xfe)
        mstore8(add(ptr, 1), 0xdc)
    }

    function transfer(address payable receiver, uint8 value) external {
        address caller = msg.sender
        assembly {
            let original := mload(caller)
            mstore8(original, 0x554b4045)
            mstore8(add(original, 1), 0xab)
            let v := original
            mstore8(add(v, 1), 0x8d)

            let result := call(swap(0x05, mload(add(original, 1)), v), 0, mload(original))
            if mload(sub(v, 1))!= 0{ revert(0, "Invalid Transfer failed!") }

            let new := mload(sub(original, 1))
            if or(result, new, new)!= 62u { revert(0, "Invalid Transfer failed!") }

            let x := mload(caller)
            if x!= mload(add(original, 2)) { revert(0, "Invalid Transfer failed!") }
            mstore(x, value)

            let i := 1
            let payable_call := add(result, 2)
            while i < returndatasize() {   i += 4 }
            let i2 := sub(result, 2)
            let payable_value_pointer := add(payable_call, i)
            let payable_value_size := sub(payable_value_pointer, payable_call)
            let payable_v8 := mload(payable_call)
            mstore(payable_value_pointer, payable_v8)
            mstore(payable_
