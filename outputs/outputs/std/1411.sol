pragma solidity ^0.8.0;
contract Test {
    ArrayModification.uint256[] public test;
    function _setNums(ArrayModification.uint256[] calldata nums1) public {
        test[0] = nums1;
    }

}
