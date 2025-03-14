pragma solidity ^0.8.0;
contract Memory1{
    uint private p0;
    uint m0;
    uint public p1;
    constructor(){
        p0 = memoryGetMemorySize() ** 2;
        m0 = memoryGetMemorySize() / 2;
        p1 = p0 + p1;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 8;
    }
}

pragma solidity ^0.8.0;
contract Memory2{
    uint private p0;
    uint m0;
    uint public p1;
    address payable public payableAddress;
    constructor(){
        p0 = memoryGetMemorySize() ** 2;
        m0 = memoryGetMemorySize() / 2;
        p1 = p0 + p1;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 8;
    }
}

pragma solidity ^0.8.0;
contract Memory3{
    uint memory public p0;
    constructor() payable{
        p0 = 0 * 1000000;
    }
    function getBytes() public {
        uint x =  p0 >> 256;
    }
}
