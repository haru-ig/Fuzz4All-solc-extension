pragma solidity ^0.8.0;
contract A {
    function f(uint a) internal {
        uint b;
        b = "1";

        b / a;
    }
}

pragma solidity ^0.8.0;
contract B {
    function f(address addr) public returns (uint) {
        uint c;
        c = addr;
        return c / 2;
    }
}

pragma solidity ^0.8.0;
contract C {
    function f(address addr) public returns (uint) {
        uint c;
        c = addr / 2;
        a = c;
        c = a / 3;
        addr = c;
        return c / 7;
    }
}

pragma solidity ^0.8.0;
contract D {
    address public contract_caller;
    constructor () public {
        contract_caller = msg.sender;
    }
    function f(uint x) internal{
        address x_address = address(0);
        x_address = contract_caller;
        x = x / 2;
        x /= 8;
        x = x / 4;
        x = x / 8;
    }
}
