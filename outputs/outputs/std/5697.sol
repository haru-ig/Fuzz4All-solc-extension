pragma solidity ^0.8.0;
contract Memory1{
    address private p0;
    uint public p1;
    uint256 private p2;
    uint public p3;
    uint256 public p4;
    constructor(){
        p0 = 0x82E79D01133D04991cE05148c0E1CC535895D29b;
        p1 = p1 + 1;
        p2 = 0xf3898e7c577f1800122c2d96e8d5d98ec899450e;
        p3 = p3 + 1;
        p4 = p4 + 2;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 28;
    }
}

pragma solidity ^0.8.0;
contract Memory2{
    address private p0;
    uint public p1;
    uint256 private p2;
    uint public p3;
    uint256 public p4;
    constructor(){
         p1 = 0x1;
        p0 = 0x9f8ba4024df5ad749489d68ef3a52eafbcd5a4c3;
        p2 = 0x1ec7b97f9345abcfda492b9c579c3b406283da5d;
        p3 = p3 + 1;
        p4 = p4 + 2;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 28;
    }
}

pragma solidity ^0.8.0;
contract Memory3{
    address private p0;
    uint public p1;
    uint256 private p2;
    uint public p3;
    uint256 public p4;
    int256 public p5;
    int256 private p6;
    constructor(){
        p1 = 0x5;
        p0 = 0x97b4f0c80717070f8357445e45ab1a961e2d1006;
        p2 = p2 + 9926;
        p3 = p3 + 1;
        p4 = p4 + 2;
        p5 = -22;
        p6 = p6 + 97;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 59;
    }
}
/* Please create a program that has the contract code injected directly with the constructor, and then modify its
