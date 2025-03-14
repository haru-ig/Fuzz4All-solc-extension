pragma solidity ^0.8.0;
contract Main3 {
    function frobnicate (uint256 arrSize, uint256 numIn) public {
        uint256[] memory a = [5, arrSize + 1, arrSize *.1, numIn];
        for (uint256 i = 0; i < numIn; i++) {
            uint256 countUpTo = arrSize + 2 + arrSize *.1;
            if (a.length > countUpTo) { a.length = countUpTo; }
            for (uint256 i = arrSize; i < a.length; i++) {
                a.length = i;
            }
        }
    }
}
