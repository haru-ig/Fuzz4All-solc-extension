pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    function foo() public {
        x = (x + ky) * z;
        x = x / z;
    }
}

pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    function foo() public {
        x = (x / 1000000) * (ky / 1000000);
        x = ky / 1000000;
    }
}
