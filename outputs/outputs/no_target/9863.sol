pragma solidity ^0.8.0;
library mut {
    function f(uint x) internal pure {
        uint y = (address(this)).balance;
        uint w = 0;
        x = y - (y - w) / 2;
    }
}

pragma solidity ^0.8.0;
contract Contract {
    uint10 a;
    bool b;
    constructor() public {
        a = uint10(address(this).balance);
        b = true;
    }
}

pragma solidity ^0.8.0;
contract Contract {
    constructor() public {
        function(uint10 a, bool b) payable {}
    }
}



contract CallTest {
    function main(uint s) {
        function foo() public pure { return 1; }

        uint r = foo();
        r = s + r;
    }
}
