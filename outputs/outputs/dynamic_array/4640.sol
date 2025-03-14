pragma solidity ^0.8.0;
contract IsolateCalldataArrayAbiReencodingSizeValidation {
    function execute() public pure returns (uint[] memory retData) {
        (retData) = IsolateArrayReencodingSizeValidation("[] > 1 elements, 32 bytes", new uint[](1)).subData();
    }
}
