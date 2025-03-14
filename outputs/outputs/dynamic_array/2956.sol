pragma solidity ^0.8.0;
contract SymbolicEquality_MutatedArray {
    uint[] y;
    address payable[] z = new address payable[](2);
        constructor () public {
        x = [0, 98, 4, 9, 5];
    }
        function foo() public view returns (uint [] memory) {
        return x;
    }
}
