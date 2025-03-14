pragma solidity ^0.8.0;

interface I2 {
    function bar() external;
}
assembly {
    contract C {
        storage {
            _;
        }
        data(200): true;
        foo();
        _;
        bar;
    }
}
