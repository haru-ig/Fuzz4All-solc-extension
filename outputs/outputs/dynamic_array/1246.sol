pragma solidity ^0.8.0;
contract ArrayReinitializer {
    uint256[] public a;
    function updateArray() public {
        a[7-1] = 3;
    }
    function revertArrayAssignment() public {
        uint256 l = a[7];
        a[7] = l+1;
    }
}



pragma solidity ^0.8.0;
contract ArrayBug {
    function test() public {
        ArrayInitializer a;
        a.revertArrayAssignment();
        a.updateArray();
        uint256 i = a.a[4];
    }
}
