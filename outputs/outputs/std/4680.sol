pragma solidity ^0.8.0;
contract A {
    uint256 public f1;
    uint256 public f2;
    uint256 public f3;
}
contract B {
    function g() public pure returns (uint64) {
        return 13873621372619230904;
    }
}
contract C {
    function g() public pure returns (uint256) {
        return 222134336689716875988;
    }
}


pragma solidity ^0.8.0;
contract A {
    uint256 public f1;
    uint256 public f2;
    uint256 public f3;
}
contract B {
    function g() public pure returns (uint64) {
        return 13873621372619230904;
    }
}
contract C {
    function g() public pure returns (uint256) {
        return 222134336689716875988;
    }
}
contract D {
    address public addr;
}
contract XYZ is A, B, C {
    uint d = 117302;
    uint b = 367921594604983152;
    uint c = 255e17;
}
