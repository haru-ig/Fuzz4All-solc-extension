pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
        function foo() public {
        x = 3;
        w = 0;
        x = x - 1;
        x = x * 5;
        x = x + 1;
        z = 2 + 4 * x;
        w = w * 8;
        ky = 1000;
    }
}

pragma solidity ^0.8.0;
contract D {
    function foo() public view returns (uint) {
        return 42 / 0;
    }
}
contract D {
    uint public x;
    uint public y;
        function foo() public {
        x = 3;
        y = 0;
        x = x;
        y = y + 1;
        x = x + 1;
        y = y + 1;
        x = x + 1;
        y = y + 1;
        x = x + 1;
        y = y + 1;
    }
}
contract main {
    function main() {
        (uint x, uint y, bool e1) = (1, 2, true);
        (uint x, uint y, bool e1) = (x + 1, y + 1, x > y);
        (uint x, uint y, bool e1) = (42 + 1, x + y, y + x == x / x * x - y);
        D d;
        (, uint z, uint w) = (x, x - 1, 1);
        (uint, bool) = (x, 1);
        (uint, bool) = (42, 0);
        D d;
        (, uint x, bool) = (3, 3, false);
        (uint, uint) = (3, x + 1);
        (uint x1, bool) = (3 + 1, false);
        (uint x1, bool) = (3 * 2, true);
        (uint, uint, uint) = (0, x + 1, 2);
    }
}
