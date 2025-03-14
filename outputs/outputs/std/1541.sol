pragma solidity ^0.8.0;
contract MutatedMutatedMutated {
    uint256 public test;
    function myInit(uint256 a) public {
        test = a * test;
    }
}
contract MutatedMutated {
    uint256 public test;
    function myInit(uint256 a) public {
        test = a;
    }
}
contract Mutated {
    uint256 public test;
    function myInit(uint256 a) public {
        test = a;
    }
}
