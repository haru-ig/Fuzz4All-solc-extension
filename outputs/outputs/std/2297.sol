pragma solidity ^0.8.0;
 interface IArrayConvertible {
    function convert(bytes memory, uint256) external pure returns (uint256[]);
}
