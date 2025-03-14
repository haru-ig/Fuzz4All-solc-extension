pragma solidity ^0.8.0;
interface IConvert {
    function strToUint(string memory hex) external pure returns (uint256);
}
