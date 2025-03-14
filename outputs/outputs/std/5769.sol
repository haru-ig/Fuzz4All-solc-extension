pragma solidity ^0.8.0;
contract Mutated2{
    uint256 public a;
    mapping ( uint256 => uint256) public b;
    function mutated12() public returns (uint256) {
        uint256 _a;
        uint256 storage _b;
        assembly {
           _a := a
           _b := b
        }
    }
}
