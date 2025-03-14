pragma solidity ^0.8.0;
contract FallbackMutator {
    function doMutation() external {
        doNormalMutation();
        doNormalMutationStorage();
        doPayableMutation();
        doPayableMutationStorage();
        doPayableMutationStorageAndCall();
    }
    function doNormalMutation() public returns (uint) {
        return 1;
    }

    function doNormalMutationStorage() public returns (uint) {

        _set(0xdead1dea,0xdeadcafe);
        return 2;
    }

    function doPayableMutation() public returns (uint) {
        _set(0xdeadcafe,0xdead1dea);
        return 2;
    }

    function doPayableMutationStorage() public returns (uint) {

        _set(0xdeadcafe,0xdead1dea);
        return 2;
    }

    function doPayableMutationStorageAndCall() public returns (uint) {
        _set(0xdead1dea,0xdeadcafe);
        _set(0xdeadcafe,0xdead1dea);
        return 2;
    }

    function _set(uint a, uint b) private pure {

        a;
        b;
    }
}

pragma solidity ^0.8.0;
contract FallbackMutator2 {
    function doMutations() public returns (uint, uint) {
        doNormalMutations();
        doNormalMutationsStorage();
        doPayableMutations();
        doPayableMutationsStorage();
        doPayableMutationsStorageAndCalls();
        return (1, 2);
    }
    function doNormalMutations() public returns (uint, uint) {
        FallbackMutator2Mutator mutator = new FallbackMutator2Mutator();
        mutator.doNormalMutation();
        mutator.doNormalMutationStorage();
        return (2, mu.get());
    }

    function doNormalMutationsStorage() public returns (uint, uint) {
        FallbackMutator2Mutator mutator = new FallbackMutator2Mutator();
        mutator.doNormalMutationStorage();
        mutator.doNormalMutationStorageStorage();
        return (2, mu.get());
    }

    function doPayableMutations() public returns (uint, uint) {
        FallbackMutator2Mutator mutator = new FallbackMutator2Mutator();
        mutator.doPayableMutation();
        mutator.doPayableMutationStorage();
        return (2, mu.get());
    }

    function doPayableMutationsStorage() public returns (uint, uint) {
        FallbackMutator2Mutator mutator = new FallbackMutator2Mutator();

        mutator.doPayableMutationStorage();
        mutator.doPayable
