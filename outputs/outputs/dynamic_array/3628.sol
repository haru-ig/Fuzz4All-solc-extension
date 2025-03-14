pragma solidity ^0.8.0;
contract C {
    uint256 x;
    uint256 p;

    constructor(uint256 p1) public {
        x = p1;
        p = p1;
    }

    function c() public {
        x = 1000;
        p = x + p;
    }
}

pragma solidity ^0.8.0;
contract C {
    mapping(uint256 => uint256) public a;

    function c() public {
        uint256 p1;
        assembly {
            p1 := a.0;
            mstore8(0, a.0)
            p6 = 0x80000001
            p7 := p6 + p8
            a.0 := p7
            p1 := a.1
        }
    }
}
pragma solidity ^0.8.0;
contract C {
    uint256 x;
    uint256 p;

    constructor(uint256 p1) public {
        x = p1;
        p = p1;
    }

    function c() public {
        x = 1000;
        p = x * p;
    }
}
