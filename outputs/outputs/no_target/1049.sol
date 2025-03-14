pragma solidity ^0.8.0;
contract SemanticMutation20
{
    uint16 private constant value = 4;
    function a() public pure {
        uint256 constant maxMinusOne = uint256(-1) - 1;
        uint256 constant maxPlusOne = uint256(-1) + 1;
        uint256 x = b() + maxMinusOne;
        assert((-maxMinusOne - 1) == x);
        x = maxPlusOne + b();
        assert((maxPlusOne + 1) == x);
        x = b() + maxMinusOne - 1;
        assert((uint256(-1)) == x);
        x = maxPlusOne + b() / _getA();
        assert((maxPlusOne + 1) == x);
        x = maxMinusOne * maxMinusOne - _a() / (uint256(47) - a());
        uint256 constant value2 = 47 * 47 - value;
        assert((uint256(47)) == x);
        uint256 constant value3 = (uint256(47) - value * a() / 100) / b() / (uint256(47) - a());
        assert((uint256(47)) == x);
        x = b() + ((_0x887fffffffffffffffffffe) + int16(getb()) + maxPlusOne + a() * value5());
        uint256 constant value4 = value;
        (uint256 x, uint256 y);
        x = (uint256(16));
        if (bool4) {
            x = (uint256(17));
        }
        (x, y);
        (x, y);
    }
    uint256 constant value5 = a() * 100;
    uint16 public getb();
    function _getA() public pure returns(uint256)
    {
        return a() + a() + a() + a() + a() + a() + a() + a() + 1 + value * a() - 1;
    }
}
