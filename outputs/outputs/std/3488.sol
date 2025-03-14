pragma solidity ^0.8.0;
contract MyLib {
    uint a;
    uint b;

    function foo(string memory s) public returns (uint256) {
        return add(s);
    }

    function add (uint x) internal pure returns (uint256) {
        a += 1;
        return a * 2 + b;
    }
}
