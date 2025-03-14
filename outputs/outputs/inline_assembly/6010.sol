pragma solidity ^0.8.0;
contract SolidityAssemblyMutator {
    uint public totalMutations = 260;
    function main() public {
        for (uint iteration = 0; iteration < totalMutations; iteration++) {
            uint8[] data = new uint8[](2);
            for (uint i = 0; i < 2; ++i) {
                data[i] = i + 9;
            }
            assembly {
                let a := add(data, 0)
                mstore(0x40, a)
            }
        }
    }
}
