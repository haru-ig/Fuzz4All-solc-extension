pragma solidity ^0.8.0;
contract Array {
    bytes32 public constant FACTOR = 0x84D73C7FAD35DF32818AA63BB3958C863962F87426294D8130AD5E76467D3B02;
    uint256 public elem1;
    uint256 public elem2;
    uint256 public elem3;
    uint256[] memory public arr1;
    uint256[] memory public arr2;
    constructor(
        uint256 elem1,
        uint256 elem2,
        uint256 elem3
    ) {
        elem1 = elem1;
        elem2 = elem2;
        elem3 = elem3;
        arr1 = new uint256[](1);
        arr1[0] = elem1;
        arr2 = new uint256[](2);
        arr2[0] = elem2;
        arr2[1] = elem3;
    }
    function Sum() public view returns (uint256 sum) {

        sum = arr1[0] + arr2[0];
        sum = 0;
        sum += arr2[1];
    }
    function Print() public {

        assert(arr1.length == 0);

        assert(arr2.length == 2);

        assert(sumForArr(arr1, 1) == elem1 + elem2);

        assert(sumForArr(arr2, 1) == elem2 + elem3);
    }
    /**
     This function creates a new array by combining two existing arrays.
     Assumptions:
     i. The length of the arrays to combine should be equal.
     II. The type of the array to combine should be same (unsigned, or signed, or neither for sign).
     III. The arrays to combine should have the same sign.
     Please be careful of the inputs or outputs! The input and output sign
