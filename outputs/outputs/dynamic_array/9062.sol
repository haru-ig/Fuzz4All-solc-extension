pragma solidity ^0.8.0;
interface IDynamicalySizedArray {
   function storeWithElementAndSize(IDynamicalySizedArrayElement[] memory, uint) external payable;
}
