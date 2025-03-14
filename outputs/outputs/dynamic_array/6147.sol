pragma solidity ^0.8.0;
contract Test90007 {
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
        second = a;
    }


    constructor () public {
        aFirst = new uint256[](1);
        aSecond = new uint256[](2);
        aFirst[0] = 5;
        aSecond[0] = 5;
        aSecond[1] = 5;
        second = 5;
    }
    fallback () external {
    }
    event Mutate ();
}
