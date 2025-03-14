pragma solidity ^0.8.0;
contract mutatedStorage{
    uint a;
    uint b;
    uint c;

    constructor() public {
        a = 1;
        b = 1;
        c = 1;

        b = 2;

        assert(a+a!= c);
    }
}
