pragma solidity ^0.8.0;
contract MutatedCaller {
    receive() public view { uint x = value; }
    receive() contract MutatedCaller1 is TestCaller { uint x = value; }
}
