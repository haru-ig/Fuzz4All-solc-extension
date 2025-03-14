pragma solidity ^0.8.0;
contract A {
    mapping(string => string) public names;
    function set(string memory n, string memory) public {
        names[n] = n;
    }
}
