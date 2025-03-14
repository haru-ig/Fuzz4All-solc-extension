pragma solidity ^0.8.0;
contract NonFallbackMutatedFallbackSimple {
    mutant uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 k) public {
        fallbackValue = 1;
        key = k;
    }
    function mutate() public {
        fallbackValue = 2;
        key = "bar";
    }
}

pragma solidity ^0.8.0;
contract Caller {
    address nonfallbackMutatedContract;
    address mutatedContract;
    uint value;
    constructor(uint v) public {
        nonfallbackMutatedContract = 0xcdaf02a871626dbee4d8d0c4d9fd78b279836e52;
        mutatedContract = 0xbb70e0dc6f1170f0c94d23f13b0d8cc71a0bc94e;
        value = v;
    }
    function pay() public payable {
        if (address(nonfallbackMutatedContract).balance > value)
            nonfallbackMutatedContract.call{value: value}(abi.encodeWithSignature("mutate()"));
        if (address(mutatedContract).balance > 0)
            mutatedContract.call{value: 0}(abi.encodeWithSignature("mutate()"));
    }
}
