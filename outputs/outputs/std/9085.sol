pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1 = 21;
    uint256 value2 = 41;
    uint256 value3 = 15;
    uint256 value4 = 324234;
    uint256 value5 = 0;
    uint256[] memory result1;
    uint256[] memory result2;
    uint256[] memory result3;
    uint256[] memory result4;
    uint256[] memory result5;
    function addNumbers() public {
        value2 = 15;
        value3 = 14;
        value1 = value2 + value3;
        value2 = value1 * value4;
        value4 = value5 / value1;
        value5 = value4 - value1;
        _address1 = payable(_address1.call.value(value5.mul(125))());
    }
}
