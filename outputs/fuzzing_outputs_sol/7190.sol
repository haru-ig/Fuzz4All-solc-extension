pragma solidity ^0.8.0;
interface IExample4 {
    function f(uint256 _r, uint256 _s, uint8 v, uint256 _a) external;
}
contract Example4 is IExample4 {
    bytes32 public x;
    uint public y;
    modifier onlyPublic {
        _;
    }
    function f(uint256 _r, uint256 _s, uint8 v, uint256 _a) public onlyPublic {
        x = type(bytes32).type(uint256, _r) ^ type(bytes32).type(uint256, _r) ^ type(bytes32).type(uint256, _s) ^ type(bytes32).type(uint256, _s) ^ type(bytes32).type(uint8, v);
        y = _a;
    }
}
