pragma solidity ^0.8.0;
contract S5 {
    uint256 constant S = 100000000;
}
contract S0 is S1 {
    uint256 constant S = 1000000000;
}
contract S1 is S0, S2, S4 {
    uint256 constant S = 10000000000;
}
contract S2 is S1 {
    function f() public {
        S = 2147483647;
    }
}
contract S3 is S5 {
    function f() public {
        S = 9223372036854775807;
    }
}
contract S4 {
    function f() public {
        S = 9223372036854775807;
    }
}
contract S5 {
    function f() public {
        S = 9223372036854775807;
    }
}
