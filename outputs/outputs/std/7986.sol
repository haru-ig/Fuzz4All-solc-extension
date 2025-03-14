pragma solidity ^0.8.0;
contract Array12_solidiarity {
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    function Mutate_array(uint256[] memory arrayOf1) private {
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf3;
        arrayOf3 = arrayOf1;
    }
    function main() public {
        uint256[] memory arrayOf1;
        uint256[] memory arrayOf2;
        uint256[] memory arrayOf3;
        uint256[] storage arrayOf11;
        uint256[] storage arrayOf21;
        uint256[] storage arrayOf31;
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf3;
        arrayOf3 = arrayOf1;
        Mutate_array(arrayOf1);
        arrayOf11 = arrayOf1;
        arrayOf21 = arrayOf2;
        arrayOf31 = arrayOf3;
        Mutate_array(arrayOf11);
        Mutate_array(arrayOf21);
        Mutate_array(arrayOf31);
    }
}
