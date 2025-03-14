pragma solidity ^0.8.0;
contract SemVer1 {
    uint fallbacks;
    function test() public {
        fallbacks = fallbacks + 1;
        fallbacks = fallbacks + 1;
    }
}
contract SemVer2 {
    uint fallbacks;
    function test() public {
        fallbacks = fallbacks + 1;
        fallbacks = fallbacks + 1;
    }
    function fallback() public {
        fallbacks = fallbacks + 1;
        fallbacks = fallbacks + 1;
    }
}
