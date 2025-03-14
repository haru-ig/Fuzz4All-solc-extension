pragma solidity ^0.8.0;
contract CallerExample5 {
    uint internal count;

    function add(uint x) public returns(uint z) {
        z = count + x;
        count = z;
    }

    function decrease(uint x) public returns(uint z) {
        z = count;
        count = x;
    }
}
