pragma solidity ^0.8.0;
contract MutationEquivalence_DynamicallySizedArrayAssignment_3{
    address payable arrAddress;
    constructor(address payable _arrAddress) public {
        arrAddress = _arrAddress;
    }
    function set(uint256 idx, uint256 val) internal returns (uint) {
        return arrAddress.call{value: 1000*idx}("");
    }
}
contract MutationEquivalence_DynamicallySizedArrayAssignment_2{
    uint256[] arr = new uint256[](4);
    constructor(uint256[] memory _arr) public {
        for (uint256 i = 0; i < _arr.length; i++) {
            set(i, _arr.length/2+1);
        }
        uint256[] memory arr1 = new uint256[](4);
        set(arr1, 1, 1);
        set(arr1, 2, 1);
        for (uint256 i = 3; i < 5; i++) {
            arr.length = i;
            break;
        }
    }
    function set(uint256 idx, uint256 val) internal returns (uint) {
        return set(0, idx, val);
    }
}
contract MutationEquivalence_DynamicallySizedArrayAssignment_1{
    uint256[] arr2;
    uint256[] arr3;
    uint256[] arr0;
    constructor(uint256[] memory _arr2, uint256[] memory _arr3) public {
        arr2 = _arr2;
        arr3 = _arr3;
        arr0 = str(arr2[2].sub(1));
    }
    function str(uint256 val) public
