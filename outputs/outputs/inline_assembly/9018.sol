pragma solidity ^0.8.0;
contract MutatedSolidity5
{
    struct X
    {
        uint256 x;
    }
    bytes32 public _a;
    bytes32 public _b;
    bytes32 public _c;
    bytes32 public _d;
    bytes32 private _x;
    constructor() public
    {
        _b = keccak256(abi.encodePacked(_a, _b));
        _d = keccak256(abi.encodePacked(_b, _d));
        _x = keccak256(abi.encodePacked(uint256(keccak256(abi.encodePacked(_a, _b))) ^ uint256(keccak256(abi.encodePacked(_a, _x)))), _d));
    }
    function add() public pure returns(bytes32 memory)
    {
        return keccak256(abi.encodePacked(uint256(keccak256(_a)) ^ uint256(keccak256(_b))), keccak256(abi.encodePacked(uint256(keccak256(_a)) ^ uint256(keccak256(_d))), keccak256(abi.encodePacked(uint256(keccak256(_a)) ^ uint256(keccak256(_x)), uint256(keccak256(_b))))));
    }
    function mul() public pure returns(bytes32 memory)
    {
        return keccak256(abi.encodePacked(uint256(keccak256(_a)) ^ uint256(keccak256(_b)), _a, _b));
    }
    function sub() public pure returns(bytes32 memory)
    {
        return keccak256(abi.encodePacked(uint256(keccak256(_a)) ^ uint256(keccak256(_b)), _a, _b));
    }
}
contract
