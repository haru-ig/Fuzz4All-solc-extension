pragma solidity ^0.8.0;
contract third7{
    event Evt1(uint256 value);
    event Evt2(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e);
    modifier MkMod(uint modToMultiply) {
        (, ) = (a,);
        uint256 _r = 1 << 32;
        (uint256 _a, uint256 _b) = (modToMultiply);
        _r /= _a == 0? _b : _a;
        a = _r;
        (, ) = (d, modToMultiply);
        (a, b) = (b, modToMultiply);
        (a, ) = (1, a);
        (b, ) = (a, b);
        (a, ) = (_r, a);
        emit Evt2(a, b, c, d, e);
        _;
        _r /= a;
        a = _r;
        _r = 1000 / 3;
        (a, b) = (_b, modToMultiply);
        (a, ) = (b, a);
        emit Evt1(_r);
        b = a * a;
        a = _r % 3;
    }
}
