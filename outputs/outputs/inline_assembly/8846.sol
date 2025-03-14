pragma solidity ^0.8.0;
contract Test
{
    mapping(uint256 => uint256) internal test = mapping(uint256 => uint256)(uint256 => uint256);
    function test() public {
        test[uint256(0)] = uint256(1);
        test[uint256(1)] = uint256(2);
    }
}
