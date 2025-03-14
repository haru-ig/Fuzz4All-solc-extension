pragma solidity ^0.8.0;




contract MutatedFallbackMultiData {
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 k) public {
        fallbackValue = 1;
        key = k;
    }
}


contract SimpleMutatedFallbackMultiData {
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 k) public {
        fallbackValue = 1;
        key = k;
    }
}

pragma solidity ^0.8.0;



contract NonFallbackMutatedFallbackSingleData {
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 k) public {
        fallbackValue = 1;
        key = k;
    }
    function mutate() public {
        fallbackValue = 1;
        key = "bar";
    }
}



contract MutatedFallbackSingleData {
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 k) public {
        fallbackValue = 1;
        key = k;
    }
}




contract MutatedFallbackSingleDataMultiData
{
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 k) public {
        fallbackValue = 1;
        key = k;
    }
}






<fim_middle>contract Caller
{
    bytes32 public key;
    constructor(bytes32 k) public {
        key = k;
    }
    function multiDataMutatedFallback() public {
