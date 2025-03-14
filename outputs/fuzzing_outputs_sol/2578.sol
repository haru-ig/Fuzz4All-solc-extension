pragma solidity ^0.8.0;
interface MutatedFallbackMultiData {
    function mutate() external;
}

contract PristineFallbackMutatedFallbackMultiData {
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 _key) public {
        fallbackValue = 2;
        key = _key;
    }
    function mutate() external {
        fallbackValue = 3;
        key = "foo";
    }
}

contract Caller {
    address public myCaller;
    address public fallback;

    MutatedFallbackMultiData public instance;
    constructor() {
        instance = new PristineFallbackMutatedFallbackMultiData("foo");
        fallback = address(instance);
    }

    fallbackAddress() external view returns(address) {
        return fallback;
    }

    fallbackAddress2(bytes memory _dummy) external view returns (address) {
        return address(instance);
    }
}
