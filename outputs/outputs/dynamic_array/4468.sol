pragma solidity ^0.8.0;
contract MutatedCurrent { function testCurrent() public returns (bytes32[][][][] memory) {
} }

pragma solidity ^0.8.0;
contract MutatedPreviousRedeployed { function testPrevious() public reverts returns (bytes32[][][][] memory) {
} }

pragma solidity ^0.8.0;
contract MutatedCurrentRedeployed { function testCurrent() public reverts returns (bytes32[][][][] memory) {
} }

pragma solidity ^0.8.0;
contract MutatedPreviousDeleted { function testPrevious() public returns (bytes32[][][][] memory) {
} }

pragma solidity ^0.8.0;
contract MutatedPreviousCopy { function testPrevious() public returns (bytes32[][][][] memory) {
} }
