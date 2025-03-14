pragma solidity ^0.8.0;
library L74 {
    uint x;
    function use() public {
        uint storage tmp = x;
        x = x + 42;
        tmp = tmp - 42;
        x = x + 42;
        tmp = tmp - 42;
        x = x + 42;
        tmp = tmp - 42;
        x = x - x;
    }
}

pragma solidity ^0.8.0;
library L75 {
    uint x;
    uint y;
    function use() public {
        uint tmp = x;
        x = x - 1;
        x = x + x;
        x = x + tmp;
        x = x + y + x * 5 % y;
    }
}

pragma solidity ^0.8.0;
library L76 {
    uint x;
    uint y;
    function use() public {
        x = x + y;
        x = x + 10;
    }
}

pragma solidity ^0.8.0;
library L77 {
    uint x;
    uint y;
    function use() public {
        x = (x * x) * 6 * x / 7;
        x = x + 1;
        x = x + 1;
        x = x + 1;
        x = x + (x * x) - 1511 % x / (y / x + x - x);
        x = x + 2;
        x = x - y;
        x = 3;
    }
}

pragma solidity ^0.8.0;
contract L
