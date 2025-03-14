pragma solidity ^0.8.0;
contract SolidityAssemblyExample6 {
    struct Immutable {
        uint256 x;
    }
    function main() public pure {
        Immutable memory x;
        x.x = 5;
        x;
    }
}

pragma solidity ^0.8.0;
contract Immutable {
    struct Immediate {
        uint256 x;
    }
    function sum(uint256 x, uint256 y) public returns (int256) {
        Immediate memory x1 = x;
        Immediate memory x2 = y;
        return (x1.x + x2.x);
    }
}
contract MutatedAssemblyExample6 {
    function main() public pure {
        Immutable memory x;
        x.x = 5;
        x.x + 1;
    }
}
