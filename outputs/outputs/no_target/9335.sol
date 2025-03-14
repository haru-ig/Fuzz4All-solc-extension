pragma solidity ^0.8.0;
contract semanticallyEquiv10
{
    uint8 constant u = 129;
    uint8 constant d = 10;
    uint8 constant g = 511;

    function func() public pure returns(uint8) {
        return d * 255 / 9 + g * 65;
    }
}
contract semanticallyEquiv11
{
    uint8 constant u = 129;
    uint8 constant d = 10;
    uint8 constant g = 511;

    uint8 public func() public pure returns(uint8) {
        return d * u / 9 + g * 65537;
    }
}
