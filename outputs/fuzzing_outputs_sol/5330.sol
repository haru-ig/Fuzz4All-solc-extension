pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface Caller8
{
        function mapSet(mapping(uint256 => mapping (uint64 => uint256)) memory) external returns (bool);
}
contract Caller {
    constructor(address c) Caller8(c) {}
    address c = address(this);
    function a() public view returns (bool) { return mapSet(c); }
    function b() public { c.transfer(2); }
    function mapSet(mapping(uint256 => mapping (uint64 => uint256)) memory v) public view returns (bool) {
        v[0][0] += 1;
        v[0][1] += 1;
        v[0][2] += 1;
        return true;
    }
}
