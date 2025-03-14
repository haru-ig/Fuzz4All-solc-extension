pragma solidity ^0.8.0;
contract fourth {
    uint public v = 9;
    uint public x = v;
    function f() public {
        x = 0;
        v = v + v;
    }
}

pragma solidity ^0.8.0;
contract fourth {
    uint public v = 9;
    uint public x = v;
    function f() public {
        x = v;
        v = 1;
    }
}

pragma solidity ^0.8.0;
contract fourth {
    uint public v = 1;
    uint public x = v;
    function f() public {
        v = 9;
        x = 0;
    }
}

pragma solidity ^0.8.0;
contract fourth{
    uint public v;
    constructor(uint _v) public {
        v = _v;
    }
    function f() public {
        v = v;
        uint temp = 1;
    }
}

pragma solidity ^0.8.0;
contract fourth {
    uint public v = uint(9);
    uint public x = v;
    function f() public {
        v = 1;
        x = 0;
    }
}
