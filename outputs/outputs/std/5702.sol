pragma solidity ^0.8.0;
contract Memory1{
    function memoryGetMemorySize() public pure returns (uint){
        return 0xdba;
    }
}

pragma solidity ^0.8.0;
contract Memory2{
    function memoryGetMemorySize() public pure returns (uint){
        return keccak256(abi.encodePacked("solc", 1));
    }
}
