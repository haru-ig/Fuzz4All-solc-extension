pragma solidity ^0.8.0;
contract ArrayTest {
    StructWithArray array0;
    StructWithArray array1;
    function arraySize() public pure returns(uint32 i) {
    i=array0.array0.length;
    }
    function arrayResizing() public pure returns(uint256 x) {
        x = array1.array0[0];
    }
    function assignToZero() public {
        uint512 x = 0;
        uint48 y;
        (x, y) = (bytes1(1), 2 ** 255);
    }
pragma experimental SMTChecker;
}
function Main() {
}
