pragma solidity ^0.8.0;
interface IDynamicalySizedArray {
    function storeBytes() external payable;
    function storeBytesWithSize(bytes [][] memory) external payable;
    function bytes() public view returns (bytes memory);
    function bytesWithSize() public view returns (bytes[] memory);
}
