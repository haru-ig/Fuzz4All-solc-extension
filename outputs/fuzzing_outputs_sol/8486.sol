pragma solidity ^0.8.0;
contract CallerExample5 {
    function add(uint x) public {
        _;
        return x + 1;
    }
}
