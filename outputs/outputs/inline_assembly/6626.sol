pragma solidity ^0.8.0;
contract MixedContactsExample00 {


    constructor() {
    }






    function store(uint56 value) public {
        assembly {



            let memory_pointer := mload(0x40)



            mstore(memory_pointer, add(memory_pointer, 95))


            mstore8(add(memory_pointer, 8), add(mem_size, sub(not(0xffffffffFFFFFFFF1), 0xfff)))
        }
    }
}
