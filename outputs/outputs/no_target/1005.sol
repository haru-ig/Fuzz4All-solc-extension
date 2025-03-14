pragma solidity ^0.8.0;
contract SemanticMutation15
{
    uint constant maxBytes = type(uint256).max;

    function modify() public pure {}

     enum E {
         E0,
         E1(uint x),
         E2(uint x)
    }

    struct S { uint a; uint b; }
    constructor(uint x) public
    {
        S storage s = new S;
        s.a = x;
        s.b = x * 1;
    }


    function update() public pure returns (uint s)

    {

    }
}




pragma solidity ^0.8.0;
contract SemanticMutation16
{
    uint constant maxBytes = type(uint256).max;

    function modify() public pure {}
    function update() public pure returns (uint)
    {
        uint a = 15;
        uint b = 0;
        uint c = a + b;
        return c;
    }
}
void main() {
    SemanticMutation16 m = new SemanticMutation16();
    uint x = m.update();
    if ( x!= 31 ) revert();
    delete(x);
}
