pragma solidity ^0.8.0;
contract Array is SafeMath {
    mapping (bytes32 => uint256) private array;
    function contains(uint16 val) public view returns (bool) {
        bytes32 value = hash(val);
        bytes32 key = msg.sender;
        require(array[key] == 0 || array[key] >= val, "Value already present in the array");
        return array[key] == 0 || array[key] >= val;
    }
    function set(uint16 value, bytes32 key) public onlyAddress(key) {
        array[key] = value;
    }
    function max() public view returns (uint16) {
        bytes32 max = hash(uint16(maxu(16)))^maxu(8);
        return array[max];
    }
    function sum() public view returns (uint16) {
        uint16 sum = uint16(uint32(array[hash(uint16(array[hash(uint16(array[hash(uint256(0x9d21fb2a39b35786cd572b87d89f9fd3a0a3c7fc898f6e13f16bb78780400488b1b924bf491eccd4295c7615a9a08c8c7c7ae5805a41f3da90b2200426283f526319f5f5216c6d97b687e")))]+array[hash(uint16(array[hash(uint16(array[hash(uint16(array[hash(uint16(uint256(0x73b86e8c0c5bb347c87ad7957363b47d50c7d2e9c3b61c95ce0c71764bb596d6e16633f08ef8530ad0d0b2e22e61c76bc66e5de49084e045ac6f8d2749315bb0a4209fdac5dbcd")))]+array[hash(uint16(array[hash(uint16(array[hash(uint16(array[hash(uint16(array[hash(uint256(0x2366271b26e2fd2d5a62eacb9267471d75b050c24d871293e2f3097
