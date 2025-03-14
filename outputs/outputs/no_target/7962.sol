pragma solidity ^0.8.0;
contract TestMutator7 {
    function f() external pure returns(uint[] memory) {
        return (new uint[](1));
    }
}



contract TestMutator6_Mutated is TestMutator6 {

    function set(uint[] memory _values) internal {
        for (uint i=0; i < 2; i++) {
          uint temp = _values[i];
          x[i] = _values[i];
          x[i+1] = temp;
        }
    }
    function set2() public {
    }
}
