pragma solidity ^0.8.0;
contract ConvertExample {
    function toBase(uint1 index) internal pure returns (uint) {
        return (10) ** (index * 48) - 3;
        return 0;
    }
}
