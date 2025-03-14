pragma solidity ^0.8.0;
contract Test68d2 {
    struct State {
        uint flagx;
        uint flag2;
        uint flag3;
    }
    uint flagx;
    uint flag2;
    uint flag3;
    uint x;
    uint y;
    uint z;
    constructor() public {
        x;
        y;
        z;
        State memory s;
        s.flagx;
        s.flag2;
        s.flag3;
    }
    function bar() public {
        x;
        y;
        z;
        State memory s;
        s.flagx;
        s.flag2;
        s.flag3;
        flagx;
    }
}


pragma solidity ^0.8.0;
contract Test69d1 {
    address public addr;
    uint public x;
    uint public y;
    constructor() public {
        x;
        y;
        addr;
    }
}


pragma solidity ^0.8.0;
contract Test6a0 {
    uint public x;
    address public addr;
    constructor() public {
        x;
        addr;
    }
    function bar() public {
        x + 1;
    }
}

pragma solidity ^0.8.7;
contract Test6a1 {
    function foo() public pure virtual {
        {x;y}
    }
}

pragma solidity ^0.8.7;
contract Test6a3 {
    struct State {
        mapping(uint => string) map;
        bool exists;
    }
    State s;
    constructor() public {
        State memory s;
        s;
        if (!s.exists) {uint; }
    }
}

pragma solidity ^0.8.0;
contract Test6a5 {
    uint x;
    string v;
    constructor()
