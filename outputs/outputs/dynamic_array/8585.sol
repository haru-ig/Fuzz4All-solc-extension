pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatorWithoutNestedCallDataArrayAbiEncodingOptimization {
    int256[] memory a;
    uint[] memory b;
    uint max;
    constructor(uint _max) {
        a = int256[](10_000);
        b = uint[](20_000);
        max = _max;
    }
    function mutatorTest() external {

        require(a.length.add(100) >= 100);
        require(b.length >= 200);

        require(a[100] == 0);
        require(b[100] == 0);

        require(a[max] == max);
        require(b[max] == max);
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentNestedCallDataArrayAbiEncodingOptimizationAndNestedCalldataArrayAbiReencodingSizeValidationAndEarlierVersionBugReproduction {
    int256[] memory a;
    int256[] memory b;
    uint[] memory c;
    uint[] memory d;
    uint256 max;
    uint[] memory nestedInts;
    uint maxNestedMax; /* Change '
