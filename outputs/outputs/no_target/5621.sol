pragma solidity ^0.8.0;
contract CoB{
    uint x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) private pure returns (uint, uint, uint) {
        assert(c == 0);
        return (a, b, c);
    }
    function g2(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        return g1(a, b, c);
    }
}





contract CoC{
    uint x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) pure public returns (uint, uint, uint) {
        return (a, b, c);
    }
    function g2(uint a, uint b) public pure returns (uint, uint){
        return g1(a, b, 0);
    }
}
interface CoD{
    function g1() public pure returns (uint);
}
contract CoE{
    uint x = 1;
    uint y = 2;
    function g1(uint a) public pure returns (uint, uint) {
        return (a, 0);
    }
    function g2(uint a, uint b) public pure returns (uint, uint) {
        return g1(a, 256);
    }
}
contract CoF{
    uint x = 1;
    uint y = 2;
    function g1(uint a) public pure returns (uint, uint, uint){
        return g2(a, 0);
    }
    function g2(uint a, uint b) public pure returns (uint, uint, uint){
        return a, b, 0;
    }
}
contract CoG{
    uint x = 1;
    uint y = 1;
    function g1() public pure returns (uint, uint) {
        return (2, 1);
    }
    function g2(uint a, uint b) public pure returns (uint, uint) {
        uint u = 0;
        return u, u;
    }
}
contract CoHI {
    function f(uint a, uint b, uint c) public pure returns (uint, uint, uint, uint) {
        uint x = 0;
        uint y = 0;
        if(b < 0x00) {
