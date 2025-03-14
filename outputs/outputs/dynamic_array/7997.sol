pragma solidity ^0.8.0;
contract Test41c 1 {
    uint256[] public array;
    constructor() public {
        array.push(0xcafebabe);
        array.push(0x12345678);
        array.push(address(0xa2345678));
    }
    function modify_3() public {
        array[3] = 0x23456789;
    }
    function modify_4() public {
        array[3] = 0x23456799;
    }
    function getValue_3() public view returns(uint256) {
        uint256 num = array[3];
        return num;
    }
}
