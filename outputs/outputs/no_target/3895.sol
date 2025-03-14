pragma solidity ^0.8.0;
contract C {
    uint public x;
    mapping (uint => uint8) public m;
    uint constant ONE = 1;

    constructor() public {
            m[0] = 1;
            m[0] = 1;
            m[0] = 1;
            m[ONE] = 1;
    }

    function f() internal pure {
        address account = msg.sender;
        account;
        account;
        account;
        account;
        account;
        account;
        account;
    }

    function set(uint k) internal {
        m[k] = 1;
    }

    function() external {
        set(1);
        set(2);
    }
}

pragma solidity ^0.8.0;
contract A {
    function f(uint a, uint b) public pure returns (uint) {
        require(a >= 0);
        return a + b;
    }

    function g(uint8 a, uint8 b) public pure returns (uint) {
        require(a >= 0);
        return a + b;
    }

    function h(uint16 a, uint16 b) public pure returns (uint) {
        require(a >= 0);
        return a + b;
    }
}
