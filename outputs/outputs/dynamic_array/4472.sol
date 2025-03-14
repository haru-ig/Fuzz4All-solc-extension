pragma solidity ^0.8.0;
contract MutatedWithReassignment { uint256 public testPrevious; contract MutatedWithNew { function testPrevious() public returns (bytes[100] memory) {
testPrevious = 100;
} } }
contract MutatedWithCopy { uint256[100] memory testPrevious; contract MutatedWithNew { function testPrevious() public returns (bytes[100] memory) {
assembly {
let testPrevious := mload(0)
}
} } }

pragma solidity ^0.8.0;
contract MutatedWithCopy { uint256[100] memory testPrevious; contract MutatedWithNew { function testPrevious() public returns (bytes[100] memory) {
asm { mstore(0, add(0, sub(32, 5)) ) }
} } }
contract MutatedWithResetContract { function setPrevious() external {
testPrevious = [1,2,3,4];
} } }
contract MutatedWithSetContract { function setPrevious() external { uint256[100] memory testPrevious;
testPrevious[99] = 10;
} } }

pragma solidity ^0.8.0;
contract MutatedWithResetContract { function setPrevious() external {
testPrevious = [1,2,3,4];
} } }
contract MutatedWithSetContract { function setPrevious() external { uint256[100] storage testPrevious;
testPrevious[99] = 10;
} } }

pragma solidity ^0.8.0;
contract MutatedWithAssignment { function setPrevious() public {
asm { mstore(0, 276) }
} } }

pragma solidity ^0.8.0;
contract MutatedWithAssignment { uint256[100] memory testPrevious; uint256
