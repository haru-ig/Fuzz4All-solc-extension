pragma solidity ^0.8.0;
contract Memory2{
    uint public p0;
    uint public p1;
    constructor(){
        p0 = memoryGetMemorySize() ** 3;
        p1 = memoryGetMemorySize() * 10 + p1;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 8;
    }
}

pragma solidity ^0.8.0;
contract Memory3{
    uint[] private p0;
    uint public p1;
    constructor(){
        p0.push(1);
        p1 = memoryGetMemorySize() * 50 + p0.length + memoryGetMemorySize();
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 8;
    }
}
address payable contractaddr0;
contract Memory4{
    uint[] private p0;
    uint public p1;
    uint public c;
    constructor(){
        uint a1 = 96;
        uint b1 = memoryGetMemorySize() * 200 + a1*4;
        c = 4+5;
        p0.push(a1 + b1 + c);
        p1 = memoryGetMemorySize() + p0.length + a1 * 4 + 500+1;

    }
    function memoryGetMemorySize() public pure returns (uint){
        return 1400;
    }
}
