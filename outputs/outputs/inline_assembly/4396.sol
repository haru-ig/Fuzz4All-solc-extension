pragma solidity ^0.8.0;
bytes32[] public array = [1337,512,1024];
bytes32[] public arrayCopy;

contract Mutator {
    function mutator(uint i) public returns(uint) {
        arrayCopy[i] = array[i] * array[i];
        if (i == 0){
            return arrayCopy[0];
        }

        return arrayCopy[i-1];
    }
}

pragma solidity ^0.8.0;
contract Tester {
    function testEmulator() public returns(uint) {
        address evm = 0x00a04392a8fe21ecB49829C9E0aA9719c00C92dD;
        Emulator xEVM = Emulator(evm);
        return xEVM.add(1000,886);
    }

    function testMutator() public returns(uint) {
        address evm = 0x00a04392a8fe21ecB49829C9E0aA9719c00C92dD;
        bytes32[] memory input = [1,2,3,2,3,8];
        Mutator xMutator = Mutator(evm);
        return xMutator.mutator(1)+7;
    }
}
