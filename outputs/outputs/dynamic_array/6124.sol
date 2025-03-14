pragma solidity ^0.8.0;
contract Test30005 {
    bytes100 public aFirst;
    bytes100 public aSecond;
    bytes100 public aThird;
    constructor (bytes100 a) public {
        aFirst = a;
        emit Mutate();
    }
    fallback () external {
        emit Mutate();
    }
    event Log ();
    event Mutate ();
}
