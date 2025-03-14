pragma solidity ^0.8.0;
contract MutatedContract {
    uint8 public result;
    function x() public pure { result -= 2; }
}

contract MutatedContract {
    uint32 public result;
    function x() public pure returns (uint32) { result -= 2; }
}
contract MutatedContract {
    uint64 public result;
    function x() public pure returns (uint64) { result -= 2; }
}
contract MutatedContract {
    int public result;
    function x() public pure returns (int) { result -= 2; }
}
contract MutatedContract {
    uint public result;
    function x() public pure returns { result -= 2; }
}
contract MutatedContract {
    uint8 public immutable result;
    function x() public pure returns(uint8) { result -= 2; }
}
contract MutatedContract {
    uint32 public immutable result;
    function x() public pure returns(uint32) { result -= 2; }
}
contract MutatedContract {
    uint64 public immutable result;
    function x() public pure returns(uint64) { result -= 2; }
}
contract MutatedContract {
    int public immutable result;
    function x() public pure returns(int) { result -= 2; }
}
contract MutatedContract {
    uint public immutable result;
    function x() public pure returns { result -= 2; }
}
contract MutatedContract {
    uint8 public result;
    function pureModifier() public pure { result -= 2; }
}
contract MutatedContract {
    uint32 public result;
    function pureModifier() public pure returns (uint32) { result -= 2; }
}
contract MutatedContract {
    uint64 public result;
    function pureModifier() public pure returns (uint64) { result -= 2; }
}
contract MutatedContract {
    int public result;
    function pureModifier() public pure returns (int) { result -= 2; }
}
contract MutatedContract {
    uint public result;
    function pureModifier() public pure returns { result -= 2; }
}
contract MutatedContract {
    uint8 public immutable result;
    function pureModifier() public pure returns (uint8) { result -= 2; }
}
contract MutatedContract {
    uint32 public immutable result;
    function pureModifier() public pure returns (uint32) { result -= 2; }
}
contract MutatedContract {
    uint64 public immutable result;
    function pureModifier() public pure returns (uint64) { result -= 2; }
}
contract MutatedContract {
    int public immutable result;
    function pureModifier() public pure returns (int) { result -= 2; }
}
contract MutatedContract {
    uint public immutable result;
    function pureModifier() public pure returns { result -= 2; }
}
contract Mut
