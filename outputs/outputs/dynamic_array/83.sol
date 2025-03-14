pragma solidity ^0.8.0;
contract A {
    uint256[][] bArray;
    uint256[][][] bArray2;
    uint256[][][] bArray1;
}


pragma solidity ^0.8.0;
contract A {
    uint256[][] bArray;


    function add(uint16[] memory _a, uint16[] memory _b) public {
        uint256 sum;
        for (uint i = 0; i < 3; i++) sum += _a[i] + _b[i];
        bArray[uint16(_a[0])] = new uint256[](uint256(_a[0] + _b[0]) + 1);
        bArray[uint16(_a[0])][_a[0] + _b[0]] = sum;
    }
}
