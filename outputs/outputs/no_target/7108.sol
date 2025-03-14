pragma solidity ^0.8.0;
contract Test1 {
    mapping (uint => uint) a;
    mapping (uint => uint) storage p;
    function setID(uint i, uint j) public {
        a[j] = i;
    }
    function getID(uint i) public pure returns (uint) { return a[i]; }
    function foo() public {
        uint x = p[2];
        uint y = a[2];
        uint z;
        z = fooz();
        uint c;
        c = getx2();
    }
    function setx2(uint i) public { p[2] = i; }
    function getx2() public pure returns (uint) { return p[2]; }
    function fooz() public pure returns (uint) { return getx2(); }
}
