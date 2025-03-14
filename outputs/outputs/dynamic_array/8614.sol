pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity94 {
    function mutatorTest27() external returns(uint) {
        uint size = [1, 2, 3].length;
        return size;
    }
    function mutatorTest28() public {
        uint size = [1, 2, 3].length;
        return size;
    }
}
