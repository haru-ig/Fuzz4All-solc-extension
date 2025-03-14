pragma solidity ^0.8.0;
interface IConvertible {
    function toUint() external view returns (uint);
    function toInt() external view returns (int);
}
contract Convertible is IConvertible {
    function toUint() public pure virtual override returns (uint) {
        return 12;
    }
    function toInt() public pure virtual override returns (int) {
        return -97;
    }
}
