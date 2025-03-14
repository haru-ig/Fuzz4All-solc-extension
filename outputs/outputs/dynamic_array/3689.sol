pragma solidity ^0.8.0;
contract D {
    array uint256 b;
    constructor() {}
    function f() public {
        b;
    }
}

pragma solidity ^0.8.0;
contract D {
    function f() public {
        D memory d;
        d.b;
    }
}
