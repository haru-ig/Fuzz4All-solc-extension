pragma solidity ^0.8.0;

pragma experimental "ABIEncoderV2";
contract SemanticTest_v8 {
    function testWithABI_1 (uint256[] memory dynArray, uint256 numElements) public pure {
        require (dynArray[0] == dynArray[1]);
        require (dynArray[0] == numElements);
        dynArray[0] = 1;
        require (dynArray[0] == dynArray[1]);
        uint256 _x = dynArray[42];
        dynArray[1] = _x;
        uint256 _y = dynArray[302];
        dynArray[2] = _y;
    }
}
