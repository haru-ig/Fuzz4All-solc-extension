pragma solidity ^0.8.0;
contract test276 {
    uint a = 0;
    uint b = 0;
    address c;
    constructor() public {
        c = address(this);
    }
    function test(uint _b) public {
        if (b == _b) b = 1;
        else {
            a = 1;
            b = _b;
        }
    }
}
contract test276 {
    uint a = 0;
    uint b = 0;
    address c;
    constructor() public {
        c = address(this);
    }
    function test238(uint _b) public {
        if (b == _b) b = 1;
        else {
            b = _b;
        }
    }
}

pragma solidity ^0.8.0;
contract test276 {
    constructor() public {}
    function test239() public {
        uint[1] i;
        i[0] = a;
    }
}

pragma solidity ^0.8.0;
contract test276 {
    uint[1] i;
    uint[5] j;
    i[0] = (c + j[0] + j[10] + j[20]);
}
