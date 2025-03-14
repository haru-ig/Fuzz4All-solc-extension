pragma solidity ^0.8.0;
contract SemanticalEquiv18
{
    uint8 a;
    uint8 public constant B = 10 ** 6;

    constructor()
    {
        a = 2 ** 59;
    }

    function f(uint8 x)
    public
    pure
    returns(uint8)
    {
        uint8 z = 3 ** a;
        if (z > x) return x + B;
        return B;
    }
}
contract SemanticalEquiv19
{
    uint8 constant F_MANTISSA = 10, F_EXPONENT = 10, F_SIGFIG = 0;

    function f(uint160 z, uint48 w) public pure returns (uint8)
    {
        uint8 z_;
        uint8 w_;
        (z_, w_) = extToZext(z, w);
        uint160 z16 = uint160(z_) + uint160(z_) / F_MANTISSA * (uint160(1) << F_EXPONENT);
        if (w_ < F_SIGFIG) return 0;
}
}
contract SemanticalEquiv20
{

    uint8 constant F_MANTISSA = 254, F_EXPONENT = -106, F_SIGFIG = 29;

    function f(uint160 z, uint48 w) public pure returns (uint8)
    {
        uint8 z_;
        uint8 w_;
        (z_, w_) = extToSignedZextAndTrunc(z, w);
        uint160 z16;
        if (z_ < F_MANTISSA / 2)
        {
            z16 = uint160(z_) - uint160(z) * (uint160(1) << F_MANTISSA) + (F_MANTISSA / 2);
        }
        else
        {
            z16 = uint160(z) - uint160(z_) * (uint160(1) << (F_MANTISSA - 1)) + (uint160(1) << F_MANTISSA);
        }
        if (w_ < F_SIGFIG) return 0;
}
}
contract SemanticalEquiv21
{
    uint8 constant F_MANTISSA = 10 - 0x80, F_EXPONENT = -17, F_SIGFIG = 0x80;

    address x;
    constructor() public
    {
        x = 0x2e4000000000000000000000000000000000000
