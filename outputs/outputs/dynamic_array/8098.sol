pragma solidity ^0.8.0;
interface IFabric {
   function appendBytes(uint256 _num) external;
}

contract Fabric is IFabric {
    uint256 public _num;
    constructor() public {
        IFabric(address(0x1234)).appendBytes(_num);
    }
    function appendBytes(uint256 _num) internal {
    }
}
