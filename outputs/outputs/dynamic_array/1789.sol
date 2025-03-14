pragma solidity ^0.8.0;
contract UsingFixedSizeArray {
    mapping(uint256 => uint256) public fixedValues;

    constructor() public {
        fixedValues[0] = 1;
        fixedValues[1] = 1;
    }

    function usingFixedAddOne(uint256 initialValue, uint256 value) public returns (uint256) {
        fixedValues[value] = initialValue + 1;
        return fixedValues[value];
    }
    function usingFixedAddOneAndCopy(uint256 initialValue, uint256 value) public returns (uint256) {
        fixedValues[value] = initialValue + 1;
        return fixedValues[value - 1];
    }
}


pragma solidity ^0.8.0;

contract ArrayRecodingAndDecoding {


    uint256 constant public MAXVALUE = 0xfffffffffffff;

    uint256[] public fixed;

    address public recipient;

    constructor(address _recipient) {
        recipient = _recipient;
    }


    function arrayAdd(uint256 index, uint256 value1, uint256 value2) public {
        fixed[index] = value1 + value2;
    }

    function arrayDelete(uint256 index, uint256 value1, uint256 value2) public {
        fixed[index] -= value1 + value2;
    }
    function arrayGet(uint256 index) public returns (uint256)
