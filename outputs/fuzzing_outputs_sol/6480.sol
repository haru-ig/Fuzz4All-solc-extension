pragma solidity ^0.8.0;
contract D {
    uint x;

    function bar() public {

        x += 3;
    }
}

pragma solidity ^0.8.0;
contract T {
    function foo() public pure virtual returns (uint) {
        return 0x0;
    }
}
pragma solidity ^0.8.0;
contract T {
    uint x;

    function foo() public pure returns (uint) {
        return x;
    }
}
interface F {
    function f() public;
}
pragma solidity ^0.8.0;
contract T is F {
    uint x;

    function f() public virtual returns (uint) {
        return x;
    }
}
