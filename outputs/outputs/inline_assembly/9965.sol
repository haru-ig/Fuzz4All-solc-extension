pragma solidity ^0.8.0;
contract C {
    mapping(uint64 => bool) public values;
    constructor() public {
        uint64 x = 0xACEDB0FD38011201415131538CCD3E136666666663399;
        uint64 n = 64;
       for(uint64 i = 0; i < n; i++)
        {
            if(values[x])
            break;
            x = uint64(1) << i;
        }
        values[x] = true;
    }
    function test(uint64 x) public {
        values[x] = false;
    }
    function value(uint64 x) public view returns(bool) {
        return values[x];
    }
}
