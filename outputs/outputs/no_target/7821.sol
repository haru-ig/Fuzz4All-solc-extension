pragma solidity ^0.8.0;
contract TestMutatorMutator {
    function getAddressMutator() public view returns (address) {
        return address(TestMutator.getZero());
    }
}


contract TestMutatorWrapper {
    function wrap(uint256 x) public pure returns(uint256) {
        return uint256(uint256(x) + 2);
    }
}


contract TestMutatorMod {

    function getMod123() public view returns(uint) {
        return 123;
    }

    function wrap() public pure returns(uint) {
        return uint256(123 + 2);
    }
}
