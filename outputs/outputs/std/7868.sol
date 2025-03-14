pragma solidity ^0.8.0;
contract Array {
    function findMaximum(uint a0[], uint n) public pure returns (uint)
    {
        uint r= a0[0];
        for(uint i=0;i<n;i++)
        {
            if (a0[i]>r) r=a0[i];
        }
        return r;
    }
    function findMinimum(uint a0[], uint n) public pure returns (uint)
    {
        uint r= a0[0];
        for(uint i=0;i<n;i++)
        {
            if (a0[i]<r) r=a0[i];
        }
        return r;
    }
    function setArray(uint a0[], uint n, uint r) public {
        for(uint i=0;i<n;i++)
        {
            a0[i]=r;
        }
    }
    function getArray(uint a0[], uint n, uint r) public pure returns (uint)
    {
        for(uint i=0;i<n;i++)
        {
            if (a0[i]==r) return r;
        }
        return 0;
    }
    function sum(uint a0[], uint n) public pure returns (uint)
    {
        uint r= a0[0];
        for(uint i=0;i<n;i++)
        {
            r+=a0[i];
        }
        return r;
    }
}
