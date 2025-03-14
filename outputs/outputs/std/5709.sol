pragma solidity ^0.8.0;
contract Memory1{
    uint public p0;
    uint public p2;
    uint public p1;
    function storageGetMemorySize() public pure returns (uint){
        return 8;
    }
    constructor(){
        p0 = p1 = p2 = memoryGetStorageSize() ** 2;
        p1 = p0 + p1;
    }
    function memoryGetStorageSize() public pure returns (uint){
        return 3;
    }
}

pragma solidity ^0.8.0;
contract Memory2{
    uint public p1;
    uint public p2;
    constructor(){
        p1 = memoryGetStorageSize() * 2;
        p2 = p1 + p2;
    }
    function memoryGetStorageSize() public pure returns (uint){
        return 8;
    }
}

pragma solidity ^0.8.0;
contract Memory3{
    uint public p1;
    uint public p0;
    constructor(){
        p1 = p0 = memoryGetMemorySize() + memoryGetMemorySize() + memoryGetMemorySize() + memoryGetMemorySize() + memoryGetMemorySize();
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 8;
    }
}
