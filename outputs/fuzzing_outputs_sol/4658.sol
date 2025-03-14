pragma solidity ^0.8.0;
contract MutatorCall {
    function shouldBe(uint counter) public view returns (bool) {
        bytes32 counterBytes = keccak256(abi.encodePacked("counter", address(counter)));
        uint counterInByte = byte(counterBytes[128]);
        uint newCounterByte = uint(counterInByte) + 1;
        uint newCounterBytes = byte(newCounterByte);
        bytes32 newCounterBytes32 = keccak256(abi.encodePacked(newCounterBytes));
        if (byte(newCounterBytes32)!= newCounterByte) {
            return true;
        }
        counter++;

        return counter > counterInByte;
    }
}

pragma solidity ^0.8.0;
contract MutatorIndirectCall {
    function shouldBe(uint counter) public view returns (bool) {
        bytes32 counterBytes = keccak256(abi.encodePacked("counter", address(this)));
        uint counterInByte = byte(counterBytes[128]);
        uint newCounterByte = uint(counterInByte) - 1;
        uint newCounterBytes = byte(newCounterByte);
        bytes32 newCounterBytes32 = keccak256(abi.encodePacked(newCounterBytes));
        if (byte(newCounterBytes32)!= newCounterByte) {
            return true;
        }
        counter++;

        return counter == counterInByte;
    }
}
