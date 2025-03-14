pragma solidity ^0.8.0;
contract Test90002 {
    uint32[] aFirst;
    uint32[] aSecond;
    uint32[] aThird;
    uint32 public first;
    uint32 public second;
    uint32 public third;
    constructor (uint32 a) public {
        aFirst = new uint32[](1);
        aSecond = new uint32[](2);
        aThird = new uint32[](3);
        aFirst[0] = a;
        aSecond[0] = a;
        aSecond[1] = a;
        aThird[0] = a;
        aThird[1] = a;
        aThird[2] = a;
        first = a;
    }
    fallback () external {
        aFirst[0] = a;
        aSecond[0] = a;
        aSecond[1] = a;
        aThird[0] = a;
        aThird[1] = a;
        aThird[2] = a;
        first = a;
    }
    event Log ();
    event Mutate ();
}

pragma solidity ^0.8.0;

contract Test90003 {
    function Test90003 () {
        uint[] a1;
        a1[0] = 0;
        a1[1] = 1;
    }
    fallback () external {
    }
    event B ();
}
