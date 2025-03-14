pragma solidity ^0.8.0;
contract MutatedEquivalent2
{
    function multiplyTwo(uint256 a) public returns(uint256)
    {
       uint256 b;
       b = a;
       uint256 c;
       c = b;
       uint256 d;
       uint256 z;
       d = 3 * a;
       b = a;
       z = b / c + d ;
       c = a % c + d;
       if(a == 2**256 -1 || z/a < 0 || z < 0 && z > 2**256 - 1)
       {
          return 0;
       }
       return a + (z + d) % 3;
    }
}

contract Contract3 is A
{
    function newMutatedEquivalent3() public returns(object)
    {
        return new MutatedEquivalent3();
    }

    function newMutatedEquivalent2() public returns(object)
    {
        return new MutatedEquivalent2();
    }
}

contract Contract2 is A
{
    function newMutatedEquivalent3() public returns(object)
    {
        return new MutatedEquivalent3();
    }

    function newMutatedEquivalent2() public returns(object)
    {
        return new MutatedEquivalent2();
    }
}
