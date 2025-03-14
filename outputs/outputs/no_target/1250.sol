pragma solidity ^0.8.0;
contract Injection_05
{
    function get(uint) public pure
    {
        unchecked {
            uint x = ~uint(uint256(uint128(uint64(uint96(uint32(uint160(uint80() + uint(2))))))))) - 1;
            (uint x1, uint x2) = (x, uint(uint256(uint128(uint64(uint96(uint32(uint160(uint80() + uint(2))))))))) - 1);
        }
    }
}


contract InvalidArithmetic {

    event InvalidValue(uint value);

    event InvalidAmount(uint amount);
    address constant public INVALID_EXPLICIT_ADDRESS = address(0);
    address constant public INVALID_ADDRESS;


    function value(uint value) internal pure returns (bytes memory){
        (uint x1, uint x2) = (uint(uint256(uint128(uint64(uint96(uint32(uint160(uint80() + uint(2))))))))) - 1, uint(uint256(uint128(uint64(uint96(uint32(uint160(uint80() + uint(2))))))))) - 1, uint(uint256(uint128(uint64(uint96(uint32(uint160(uint80() + uint(2))))))))) - 1, uint(uint256(uint128(uint64(uint96(uint32(uint160(uint80() + uint(2))))))))) - 1, uint(uint256(uint128(uint64(uint96(uint32(uint160(uint80() + uint(2))))))))) - 1, uint(uint256(uint128(uint64(uint96(uint32(uint160(uint80() + uint(2))))))))) - 1, uint(uint256(uint128(uint64(uint96(uint32(uint160(uint80()
