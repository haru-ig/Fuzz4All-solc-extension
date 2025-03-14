pragma solidity ^0.8.0;
contract Array {

    function isEqual(uint[][] memory a, uint[] memory b) public pure {
        for (uint256 i = 0; i < b.length; i++) {
            if (a[i][1]!= b[i]) {
                throw;
            }
        }
    }
}
