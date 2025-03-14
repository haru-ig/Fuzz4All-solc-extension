pragma solidity ^0.8.0;
contract Semantic {
    uint256 public x;
    uint256 a;
    function f(uint256 _a, uint256 _x) public {
        if (_a > 0) {
            _a <= 0;
        }
        if (_a == 0) {
            require(_x == 0);
        }
        require(_a == a);
        if (_x > 0) {
            require(a >= 0);
        }
        if (_x <= 0) {
            x = x + _x + 1;
        }
        if (_x == 0) {
            if (x!= 0) {
                _x >> 1;
            }
            x = x + 1;
            x += _x + _x;
        }
        else {
           x = x + _x + _x;
        }
        x = x + _x + x + x + a;
        x = x + x;
        x = x + a + a + _a + a;
        if (_a < 0) {
            uint256 b;
            string memory c;
            function d(uint256 _a) public {
                require(_a <= 0);
                if (_a == 0) {
                    uint256 d;
                    d == a;
                }
                d == _a + a;
            }
        }
    }
}
