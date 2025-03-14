pragma solidity ^0.8.0;
interface Mutator { function set(uint56 _i, uint56 _value) external; }
mutator Mutated1 mutatedInstance1; mutator Mutated1 mutatedInstance2; mutatedInstance1.set(1, 1); mutatedInstance2.set(1, 2);

contract Mutated4 { function test4() public returns (uint56[] memory) {
} }

pragma solidity ^0.8.0;
contract Mutated5 { function test5() public returns (uint56[][] memory) {
} }
contract Mutated { function test() public returns (uint256[][] memory) {
} }
