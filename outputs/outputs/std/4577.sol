pragma solidity ^0.8.0;
contract Array{
    uint[] public myIntegers;
    mapping(uint=>uint) public hashMap;
    function setInteger(uint x) public {

        myIntegers.push(x);

        hashMap[x] = x;
    }
    function findMinInteger() public returns (uint)
    {
        uint localMin = uint(myIntegers[0]);
        for(uint i=1; i<myIntegers.length; i++)
        {
            if(localMin > myIntegers[i])
            {
                localMin = myIntegers[i];
            }
        }
      return localMin;
    }
    function findMaxInteger() public returns (uint)
    {
        uint localMax = uint(myIntegers[0]);
        for(uint i=1; i<myIntegers.length; i++)
        {
            if(localMax < myIntegers[i])
            {
                localMax = myIntegers[i];
            }
        }
      return localMax;
    }
    function findSumInteger() public returns (uint)
    {
        uint localSum = 0;
        for(uint i=0; i<myIntegers.length; i++)
        {
            localSum = localSum+myIntegers[i];
        }
      return localSum;
    }
    function printInteger() public view returns (uint)
    {
        return myIntegers[5];
    }
    function checkHash(uint x) public view returns (uint) {
        uint x2 = hashMap[x];
        return x2;
    }
}
