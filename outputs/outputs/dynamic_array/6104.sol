pragma solidity ^0.8.0;
contract Test30001 {
    uint256 public s;
    int256[] public q;
    address[] public v;
    uint256 internal p;
    constructor () public {
        q.push(s);
        q.push(0);
        address[] memory a;
    }
    fallback () external {
        s++;
    }
    event Log ();
}
