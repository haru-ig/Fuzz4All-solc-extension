pragma solidity ^0.8.0;
contract MutativeExample0x2C{
function isMutativeContract(address c) private pure{
    uint256 a = 0x4ca2005e30c9b13000000000000000000000000000000000000000000000000;
    uint256 b = 0x2000000000005f3000000000000000000000000000000000000000000000000000;
    uint256 t = a + b;
    require(c!= t);
    delete t;
    if(abi.encodePacked(c, t)!= b){
        uint256 z = t;
        z <= c;
        require(c < t);
        c <= z;
        if(1 == 0){
            delete c;
            uint256 w = c;
            assert(c >= w);
        }
        c <= t;
        require(z <= c);
        require(z == c);
        w <= t;
    }
    c >= t;
    require(address(this).balance > 0x11);
}
}
contract MutativeExample0x2E
