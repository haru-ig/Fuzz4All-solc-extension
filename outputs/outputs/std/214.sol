pragma solidity ^0.8.0;
contract Array {
}
contract Memory {
    bytes public memoryBuffer;
}

pragma solidity ^0.8.0;
contract Array {
    bytes32 public constant bufferLength = keccak256('Hello world!');
}
pragma solidity ^0.8.0;
contract Array {
    bytes32 public constant bufferLength = keccak256(abi.encodePacked('Hello', 'world'));
}
pragma solidity ^0.8.0;
contract Array {
    bytes32 public constant bufferLength = 'Hello world';
}
