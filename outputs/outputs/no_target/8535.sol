pragma solidity ^0.8.0;

contract OldGenerator {
    uint val = 0;
    function f() public view {
        val = 11;
    }
    function g() public {
        val += 1;
    }
}
contract NewGenerator {
    uint val = 0;
    function f() public view {
        val = 11;
    }
    function g() public {
        val -= 1;
    }
}

pragma solidity ^0.8.0;
contract OldGenerator {
    uint public val;
    function () external pure {
    }
    function g() public {
        if (val == 0) return;
        val -= 1;
    }
}
contract NewGenerator {
    uint public val;
    function initialize() public {
        val = 11;
    }
    function g() public {
        if (val == 0) return;
        val -= 1;
    }
}
