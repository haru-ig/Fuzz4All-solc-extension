pragma solidity ^0.8.0;
contract NewArray {
    uint[] memory array;
    function setValue(uint256 value) public {
        array.push(value);
    }
}
contract Emergency {
    function emergency() public pure returns (address) {
        return address(1);
    }
}
contract Test {
    New new;
    NewArray newArray;
    NewValue newValue;
    Math math;
    Convert convert;
    Random random;

    constructor() {}
}
