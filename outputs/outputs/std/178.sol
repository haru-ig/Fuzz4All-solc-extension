pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger_using_for(uint256[] memory a, uint256[] memory b) internal pure returns (uint) {
        for (uint i = 0; i < a.length; i += 1) {
            uint256 y = a[i];
            uint256 z = b[i];
            require(y >= z);
            uint256 x = y;
            while (x < z) x = x * 10 + b.length;
        }
        return a[a.length - 1];
    }
}
