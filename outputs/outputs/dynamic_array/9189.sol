pragma solidity ^0.8.0;
contract MutableArrays {
    uint[] mutable external storage array;

    constructor() public {
        require(array.length == 0);
        array.push(0x3ba0b4063b18ad3769724d766468a9b89c328457);
        array.push(0x422a33bc7c905556a2575b82b6db67c9b5900a62);
    }

    function get() public view returns (uint[]) {
        return array;
    }

    function setnew(uint[] memory new_value) public {
        array = new_value;
    }
}
