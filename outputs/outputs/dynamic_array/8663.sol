pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity28_dynamicArraysOfSameLength {
    function callTest19() public view returns (uint256[][] memory) {
        uint256[][] memory arr;
        arr[0] = new uint256[](0);
        arr[1] = new uint256[](0);
        return arr;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity14_dynamicNestedArrays {
    uint256[][] public a;
    uint256[][][] public b;
    uint256[][] private c;
    uint256[][][] private d;

    function callTest02(uint256[][] memory _arr) public view returns (uint256[][] memory) {
        return _arr;
    }
    function callTest05(uint256[][][] memory _arr) public view returns (uint256[][][] memory) {
        return _arr;
    }
    function callTest28() public view returns (uint256[][][] memory) {
        uint256[][][] memory arr;
        arr[0] = new uint256[0][0];
        arr[1] = new uint256[0][0];
        return arr;
    }
}
