pragma solidity ^0.8.0;
contract Mutate {
    struct A {
        uint32 x, y;
        function setxy(uint a) public { x = a; }
        function getxy() public view returns (uint aa) { aa = x; }
    }
    address x;
    uint32 z;
    A a;
    function setz(uint32 z) public { this.z = z; }
    function setA(uint32 z) public {
        x = msg.sender;
        a.setxy(a.getxy() + z);
    }
    function callA() public {
        a.getxy();
    }
    function getX() public view returns (uint32 aa) {
        aa = a.getxy();
    }
}
