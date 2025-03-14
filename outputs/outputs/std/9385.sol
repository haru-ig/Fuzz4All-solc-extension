pragma solidity ^0.8.0;
contract Mutate8
{
    address _account;
    function mutateB(uint256 a, uint256 b, uint256 _x) public returns(uint256)
    {
        _x += b;
        _x += a;
        _x -= b;
        return _x;
    }
}

pragma solidity ^0.8.0;
contract Mutate9
{
    address _account;
    function mutateB(uint256 a, uint256 b, uint256 _x) public returns(uint256)
    {
        (uint256[1] memory _v0, uint256[2] memory _v1) = _x;
        _x += (uint256[2] memory(_v0, b))[0];
        _x += a;
        (uint256[2] memory _v1, ) =  (_v1, uint256[2] memory(_v0, b))[1];
        return _x;
    }
}

pragma solidity ^0.8.0;
contract Mutate15
{
    address _account;
    function mutateB(uint256 a, uint256 b, uint256 _x) public returns(uint256)
    {
        uint256[3] memory _v0;
        _v0 = (a, b);
        uint256 storage _v1;
        (uint256[1] memory _v2, ) = (_v1);
        uint256 memory _v3;
        (_v1, _v3) = (_v1);
        uint256 temp = _v3;
        uint256[1] memory _v4;
        uint256 _v5;
        unchecked{
            _v5 = temp;
            unchecked{
                (uint256[1] memory _v6, ) = (_v5);
                (uint256 _v7, ) = (uint256[2] memory(_v4, _v6))[0];
                unchecked{
                    unchecked{
                        unchecked{
                            unchecked{
                                (uint256[2] memory _v8, ) =  (uint256[1] memory(_v5), uint256[2](0,_v7));
                                _v7 += (_v8);
                            }
                        }
                    }
                }
                _v5 += (_v7);
            }
        }
        _v3 = _v3 + a;
        (uint256[1] memory _v9
