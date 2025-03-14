pragma solidity ^0.8.0;
contract Test90006 {
    uint256[] aFirst;
    uint256[] aSecond;
    uint256 second;
    uint256 third;
    constructor (uint256 a) public {
        aFirst = new uint256[](1);
        aSecond = new uint256[](2);
        aFirst[0] = a;
        aSecond[0] = a;
        aSecond[1] = a;
        second = a; }
    fallback () external {
    }
    event Mutate ();
}
