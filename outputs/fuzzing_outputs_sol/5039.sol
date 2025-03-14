pragma solidity ^0.8.0;
contract Mutated {
    function mutate(uint256 x) public pure {
        x = mutate();
    }
    function mutate2(uint256 x, uint256 y) public pure {
        x = mutate(y);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    contract C1 {
        function f() public view returns(contract C2) {}
    }
    contract C2 {
        function g(C1 calldata c) public pure {}
    }
    contract C3 {
        function call(C1 calldata c) public pure {}
    }
}
