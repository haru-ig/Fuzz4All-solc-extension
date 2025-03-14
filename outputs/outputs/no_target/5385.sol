pragma solidity ^0.8.0;
contract OldContract {
    function oldMethod() public pure { }
    function oldMethodMutated() public pure returns (address) { return address(this); }
    function oldMethodWithOtherAddress(address x) public pure returns (uint) { return x; }
    function oldMethodWithError(uint x) public pure returns (uint) {
        return x;
    }
    function oldMethodWithMultipleReturns(uint x, uint y, uint z) public pure returns (uint) {
        return x + y;
    }
    function oldMethodWithMultipleMutations(uint x, uint y, uint z) public pure returns (uint) {
        x = 1 << (2 ** 64);
    }
    function oldFunction(uint x) public pure returns (uint) {
        return x;
    }
    function oldFunctionMutated(uint x) public pure returns (uint) {
        return x + 1;
    }
    function oldFunctionWithMultipleReturns(uint x, uint z) public pure returns (uint, uint) {
        return (x, z);
    }
    function oldMethodInContract() public pure returns (uint) {
        return 1;
    }
    function oldMethodInContractMutated(uint x) public pure returns (uint) {
        return x + 1;
    }
    function oldMethodWithOtherAddressInContract(address x) public pure returns (uint x) {
        return x;
    }
    function oldMethodWithErrorInContract(uint x) public pure returns (uint x) {
        return x;
    }
    function oldMethodWithMultipleReturnsInContract(uint x, uint z) public pure returns (uint, uint) {
        return (x, z);
    }
    function oldFunctionInContract(uint x) public pure returns (uint) {
        return x + 1;
    }
    function oldFunctionWithMultipleReturnsInContract(uint x, uint z) public pure returns (uint, uint) {
        return (x, z);
    }
    function oldMethodReentrancy() public {
        oldMethod();
    }
    function oldMethodMutatedReentrancy() public returns (address) {
        return address(0);
    }
    function oldMethodWithErrorReentrancy(uint x) public {
        oldMethodWithError(x);
    }
    function oldMethodWithMultipleReturnsReentrancy(uint x, uint y, uint z) public {
        oldMethodWithMultipleReturns(x, y, z);
    }
    function oldMethodWithMultipleMutationsReentrancy(uint x, uint y, uint z) public {
        oldMethodWithMultipleMutations(x, y, z);
    }
    function oldMethodInContractReentrancy() public {
        oldMethodInContract();
    }
    function oldMethodInContractMutatedReentrancy() public returns (uint) {
        return
