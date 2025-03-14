pragma solidity ^0.8.0;
contract Modifications2 {
    uint public x;
    bool public y;
    uint8 public z;
    string public p;
    constructor(uint _x, bool _y, uint8 _z, string memory _p) public {
        x = _x;
        y = _y;
        z = _z;
        p = add2Str(_p);
    }
    function add2Str(string memory s) private pure returns(string memory) {
        s += "z";
        return s;
    }
}
contract ContractModifications{
    function update(uint _a, uint _b) public {
        Modifications mod = Modifications( Modifications2(a, b, x, p) );
        require( a == mod.a + 256 );
        b = mod.b - 256;
        a = _a - 256;
    }
    function update2(uint _x, bool _y, uint8 _z, string memory _p) public {
        Modifications2 mod = Modifications2(_x, _y, _z, _p);
        require( x == mod.x + 256 );
        y = mod.y - 256;
        x = _x - 256;
    }
}
