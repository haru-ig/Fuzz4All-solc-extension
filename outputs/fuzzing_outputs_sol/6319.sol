pragma solidity ^0.8.0;
contract Caller {
    Mutated[] arr;
    uint[] arr_b;

    function mutants() public view returns (Mutated[] memory) {
        return arr.read();
    }
    function mutants2() public payable returns (Mutated[] memory) {
        return arr.read();
    }
    function mutants3() public payable returns (Mutated[] memory) {
        return arr.read();
    }
    function mutants4() public returns (Mutated[] memory) {
        return arr.read();
    }
    function mutants5() public nonpayable returns (Mutated[] memory) {
        return arr.read();
    }
    function mutants6() public nonempty returns (Mutated[] memory) {
        return arr.read();
    }
    function mutants7() public returns (mutant) {
        return arr[0];
    }
    function mutants8() public returns (mutants_set) {
        return arr_b.read();
    }

    function call_nonmutant() public nonpayable returns (mutant) {
        return Mutated(0).mutantFunction();
    }
    function call_mutant() public returns (mutant) {
        return Mutated(0).mutantFunction();
    }
    function call_mutants_set() public returns (mutants_set) {
        return MutatedSet(0).mutantFunction();
    }
}
contract CallerFallback {
    Mutated[] arr;
    uint[] arr_b;

    function mutants() public view returns (Mutated[] memory) {
        Mutated[] memory memory_0x0 = arr.read();
        return memory_0x0;
    }
    function mutants2() public view returns (Mutated[] memory) {
        Mutated[] memory memory_0x1 = arr_b.read();
        return memory_0x1;
    }
    function mutants3() public view returns (Mutated[] memory) {
        Mutated[] memory memory_0x2 = arr.read();
        return memory_0x2;
    }
    function mutants4() public view returns (Mutated[] memory) {
        Mutated[] memory memory_0x3 = arr.read();
        return memory_0x3;
    }
    function mutants5() public nonview returns (Mutated[] memory) {
        Mutated[] memory memory_0x4 = arr.read();
        return memory_0x4;
    }
    function mutants6() public view nonempty returns (Mutated[] memory) {
        Mutated[] memory memory_0x5 = arr.read();
        return memory_0x5;
    }
    function mutants7() public view returns (mutant) {
        return arr[0];
    }
    function mutants8() public view returns
