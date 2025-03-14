pragma solidity ^0.8.0;
contract Semantic1 {
      contract Semantic2 {
        uint y;
        uint a;
        function f(uint _a) public {
            uint b = 1 + (_a << 12);
            (b << b) >> (_a & 1);
            a = 1 + (_a << 12) - _a + (_a * _a) / (_a - 1) - (_a / (_a >> 1));
            b << 10;
            y << _a - _a;
            z = 1 << (_a - _a);
            x;
            y + _a - b + c + (_a >> 11);
            y %= ((c + _a) << _a);
            (b - _a) >> (_a * 2 + b * 3);
            y + _a - b - (_a + b);
            a %= c * 2;
            y = a;
            y;
            x >> _a + a >> (_a - _a);
            b -= 1 - _a;
            b %= (_a + 1 - b) % 2;
        }
        uint c;
    }
}




pragma solidity ^0.8.0;
contract Semantic {
    uint256 public x;
    uint256 public y;
    bool public z;
    uint public a;
    function f(bool _z, uint256 _a) public {
        x;
        if (_z) {
            y >> _a + y >> (_a - _a) + w;
            y %= y;
            (a << _a) >> (_a - y ^ 1);
            (y - a) >> _a;
            a >> _a - a;
            a >> (_a & _a);
            c;
            b &=(a | 2) | 8;
            c = (a * _a) + (a * a) + _a % ((1 << _a) + a);
            a * _a;
            _a - _a >> b + _a << b;
            c;
            a + _a >> (_a + a % (_a >> 13) % a + 1) >> (_a - (_a >> 10) % (_a * _a - _a) + _a - a % _a) + (_a[4] + _a - 1 << _a - (_a >> 12) + 1);
            z;
            (1 << b * y % (_a | _a)) >> x;
            z >> _a >> _a >> _a >> 17;
            (z / _a) + (c >> 10) >> _a;
            (a
