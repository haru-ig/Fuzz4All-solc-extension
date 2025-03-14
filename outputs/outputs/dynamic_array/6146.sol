pragma solidity ^0.8.0;
contract Test90007 {
    uint256[] aFirst;
    uint256[] aSecond;
    uint256 second;
    constructor (uint256 a) public {
        aFirst = [a];
        aSecond = [a];
        aSecond[1] = a;
        second = a; }
    fallback () external {
    }
    event Mutate (uint256 _index, uint256 _value);
}
