pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (uint e) {
        e = 32 + 256;
    }
}

pragma solidity ^0.8.0;
contract A {
    function myFunction() public pure returns (uint e) {
        e = 256 + 42;
    }
}
