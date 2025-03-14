pragma solidity ^0.8.0;
contract SomeContract {
    function someContract(uint256[3] memory) public {
        data();
    }
    function data() public pure {
        assembly {

            if (block.timestamp <= 32420) {
                data := 0
            }

            if (block.timestamp <= 32300) {
                data := 43
            }
            if (block.timestamp <= 32150) {
                data := 99
            }
        }
    }
}
