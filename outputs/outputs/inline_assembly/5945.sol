pragma solidity ^0.8.0;



contract InlineTest {



    uint256 internal constant MIN_VALUE = 0;

    constructor(uint256 minVal) {
        if (minVal < MIN_VALUE) {
            revert();
        }
    }


    function test(uint value) external view {
        if (value < MIN_VALUE) {
            revert();
        }
    }


    function _testArray(bytes memory data) private view
    {

        bool valid;
        bool isSameData;

        assembly {
            valid := eq(0x0, mload(add(data, 32)))
        }

        if (valid) {



            assembly {
                isSameData := eq(0x0, mload(add(data, 32)))
            }



            if (isSameData) {
                revert();
            }
        }
    }


    function processArray(uint256[] memory data, bool valid) external view {
        if ((valid) && (data.length > 5)) {
