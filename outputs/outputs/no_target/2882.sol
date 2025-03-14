pragma solidity ^0.8.0;
contract mutatedStorage{
    uint a = 1;
    uint b = 2;
    uint c = 3;
    uint d = 4;
    constructor() public {
        a = b;
    }
    modifier public(){
        a = c;
        b = d;
        b = a;
    }
}
