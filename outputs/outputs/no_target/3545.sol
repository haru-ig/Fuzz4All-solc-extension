pragma solidity ^0.8.0;
contract m219 {
    uint public x1;
    uint256 public x2;
    uint x3;
    uint x4;
    constructor(uint z) public {
        x3 = x1;
        x4 = x2;

        delete x4;
        x2 = x3 + x4;
        x2 = x2 / 5;
        x3 = x2;
    }
}

pragma solidity ^0.8.0;
contract m254 {
    uint constant MY_CONST_ZERO = 0;
    uint constant MY_CONST_ONE = 1;
    uint constant MY_CONST_TWO = 2;
    uint constant MY_CONST_THREE = 3;
}

pragma solidity ^0.8.0;
contract m260 {
    uint x;
    constructor() public {
        x = 166;
    }
}

pragma solidity ^0.8.0;
contract m261 {
    uint x;
    uint256 y;
    constructor() public {
        y = x;
        y++;
        y = y / 5;
        y = y * 7;
        y = y - 1;
        y = 791;
    }
}

pragma solidity ^0.8.0;
contract m264 {
    uint x;
    uint[] y;
    uint public z;
    constructor() public {
        z = x + 2;
        y.push(x + (z * 2) + 2);
    }
}

pragma solidity ^0.8.0;
contract m273 {
    uint public x;
    uint public z;
    constructor(uint init_state) public {
        x = 10 * 70;
        z = 0;
        y();
    }
    function y() public { z *= x % 6 + 2 + i; }
}
/* Please create a mutated program which remembers the state of
