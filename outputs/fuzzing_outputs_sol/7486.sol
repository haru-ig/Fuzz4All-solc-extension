pragma solidity ^0.8.0;
contract Fallback {
    function f1() public {
        (bool passed1, uint x) = add(1, 1);
    }
}
contract Add {
    uint x;
    function add(uint a, uint b) internal pure returns (bool, uint) {
        (bool success, uint sum) = a + b;
        x = success;
        return (success, sum);
    }
}
contract Mutate {
    uint x;
    function mutate() internal pure {
        (uint _failed, uint _sum) = add(1, 42);
        uint _failed2;
        (bool success, uint sum) = add(1, _failed2);
    }
}
