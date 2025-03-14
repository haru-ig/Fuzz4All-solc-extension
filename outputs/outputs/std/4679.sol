pragma solidity ^0.8.0;
contract A {
    bytes32 public f1;
    bytes32 public f2;
    bytes32 public f3;
}

contract B {

    function g() public pure returns (uint64) {
        return 13873621372619230904;
    }
}

contract C {

    function g() public pure returns (uint256) {
        return 22213433668971679709;
    }
}
