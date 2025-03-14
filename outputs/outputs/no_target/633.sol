pragma solidity ^0.8.0;
contract A {
    contract BWrapper {
        constructor() public { }

        function f() public {
            log0(true);
        }
    }

    function f() public {
        log1(true);
    }

    function f() public {
        log2(true);
    }

    function f() public {
        log3(true);
    }

    function f() public {
        log4(true);
    }
}
