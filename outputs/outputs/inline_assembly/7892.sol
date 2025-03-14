pragma solidity ^0.8.0;
contract L45 {
    uint x;
    modifier modifyCalled {
        x = x + 10;
        x = x * 2;
        x = x + 1;
        x = x + 5;
        _;
    }
    function use() public modifyCalled {
        x = 1;
    }
    function use2() public modifyCalled {
        x = 5;
    }
    function use3() public modifyCalled {
        x = 10;
    }
    function use4() public modifyCalled {
        x = 20;
    }
}

import "Lib.sol";
contract L46 {

    function test() public {
        Lib.L45.modifyCalled.gas();
    }
}

pragma solidity ^0.8.0;
contract L47 {

    function test() public {
        Lib.L45.modifyCalled();
    }
}
