pragma solidity ^0.8.0;
contract test24
{
    mapping (address => bool) public myMap;
    uint m1;
    uint256 m2;
    uint a1;
    uint256 a2;
    uint256 a3;
    uint256 a4;
    uint public v1;
    function test() public
    {
        addMapMember();
        addMyMap();
        clearMyMap();
        setMyMap(true);
        setMyMap(false);
        a1 = a2;
        a2 = a1;
        a3 = a4;
        a4++;
    }
    function addMyMap() public
    {
        myMap[address(this)] = true;
    }
    function addMapMember() public
    {
        myMap[address(this)] = true;
        myMap[address(this)] = false;
        myMap[address(this)] = true;
    }
    function clearMyMap() public
    {
        delete myMap[address(this)];
    }
    function setMyMap(bool val) public
    {
        if (val)
            myMap[address(this)] = false;
        else
            myMap[address(this)] = true;
    }
}

pragma solidity ^0.8.0;
contract test25
{
    mapping (address => bool) public myMap;
    uint256 m1;
    uint public v1;
    bool r;
    uint256 public v2;
    function test() public
    {
        m1 = 101;
        r = true;
        v2 = 100;
        m1 = m1 + 20;
        r ^= (v1 ^= m1 >> 1);
        v1 <<= 1;
        v1 = v1 + m1 << 1;
        r = r + v1? m1 == 2**20 : m1;
    }
}
