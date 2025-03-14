pragma solidity ^0.8.0;
contract CallerExample15 {
    uint x;
    function f( ) public pure returns (uint x) {
        return 3;
    }
    function f(uint x) public pure returns (uint x) {
        return x + 1;
    }
}
pragma solidity >=0.8.0;
contract CallerExample16 {
    function f( ) public pure returns (uint x) {
        return 3;
    }
    function f(uint x) public pure returns (uint x) {
        return x + 1;
    }
}
