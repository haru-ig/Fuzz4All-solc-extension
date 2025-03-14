pragma solidity ^0.8.0;
contract ArrayManipulationWithMutations {
    using MutatedArray for uint[];
    uint[] storeOne;
    uint[] storeTwo;
    function getMaximumByMutations(uint256 someMaximum) public view returns (uint256) {
        uint256 resultOne = storeOne[storeOne.length - 1];
        uint256 resultTwo = 0;
        if (storeOne.length > 1) revert();
        for (uint256 i = 0; i < storeOne.length; i++) {
            if (resultTwo > someMaximum) someMaximum = resultTwo;
            if (resultOne > someMaximum) someMaximum = resultOne;
            if (resultTwo > storeOne[i] + storeTwo[i]) resultTwo = storeOne[i] + storeTwo[i];
            if (resultOne > storeOne[i]) resultOne = storeOne[i];
        }
        return someMaximum;
    }
    function add(uint[] memory some_array) public returns (uint256) {
        require(some_array.length > 0);
        storeOne = some_array.clone();
        uint256 result = getMaximumByMutations(getMaximum(storeOne));
        some_array.push(storeTwo[storeTwo.length - 1] + result);
        return result;
    }
}
