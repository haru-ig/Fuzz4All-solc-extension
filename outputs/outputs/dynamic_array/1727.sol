pragma solidity ^0.8.0;
contract MutationInArrayStorage16 {
    uint256[16] public data;
    function initialize() public payable returns (uint256) {
        storageClear();
        data[9 / 2] += 1;
        emit Foo(uint8(uint256(data)), 8 / 2, data);
        return data.length;
    }
    function storageClear() public {
        for (uint256 index = 15; index >= 0; index--) {
            data[index] = 0;
        }
    }
    function readByte(uint256 index) public view returns (uint256) {
        return data[index];
    }
    event Foo(uint256 indexed x, uint256 indexed y, uint256[] data);
}
