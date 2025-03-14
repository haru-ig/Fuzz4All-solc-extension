pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate6
{
    uint256 _x;
    function mutateF(uint256 a, uint256 b) internal returns(uint256)
    {
        uint256 z = a*b;
        _x = z;
        x += z;
        x += b;
        x += a;
        uint y = _int(a);
        return z;
    }
    function mutateF2(uint256 a, uint256 b) internal returns(uint256)
    {
        uint256 x = _int(a);
        uint256 y = _int(b);
        {
            x = x*y;
            x = x - x;
            return a+x;
        }
        x *= y;
        uint256 w = a*b;
        w = w;
        w = w;
        x *= w;
        return a;
    }
    function _int(uint256 b) private pure returns(uint256){ return b; }
    function x() private pure returns(uint256){ return _x; }
}
