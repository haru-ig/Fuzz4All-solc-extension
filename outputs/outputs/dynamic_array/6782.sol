pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface IFallbackInterface { function fallback() external payable; }
contract T227 {
    bytes4 magic;
    uint256 value;

    constructor(bytes4 _magic, uint256 _value) external {
          magic = _magic;
          value = _value;
   }
    function fallback() public payable {}
    receive() external pure { throw 0xf4142002; }
}
