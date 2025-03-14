pragma solidity ^0.8.0;
contract Array12_immutable_solidity {
    uint256[] public immutable arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    function Array12_immutable_solidity() public {
        arrayOf1 = arrayOf2 = arrayOf3 = arrayOf1;
    }
}
