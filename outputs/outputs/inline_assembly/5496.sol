pragma solidity ^0.8.0;
contract MutateWipeBc5 {
    function wipeOne(address to) public pure {
        bytes32 dataToInject;
        assembly {
            let temp := 0xccc6333330
            dataToInject := mload(add(temp, 3))
            let temp2 := 0xccc6393330
            dataToInject := mload(add(temp2, 3))
        }
        to.call{value: dataToInject}("");
    }
}
