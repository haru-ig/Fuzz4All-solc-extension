pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_dynamicArrayOfDifferentLengths {
    uint256[][][] public a;
    function callTest02(uint256[][][] memory _arr) public view returns (uint256[][][] memory) {
        return _arr;
    }
}

pragma solidity ^0.8.0;
interface Solidity_memoryStorageInstanceMethods {
    uint256[] a;

}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_memoryStorageInstanceMethods {
    uint256[] public a;

}
