pragma solidity ^0.8.0;
contract Array {
    function findMin(uint[] memory a) public view returns (uint)
    {return a[0];}
    function findMax(uint[] memory a) public view returns (uint)
    {return a[a.length - 1];}
    function findSum(uint[] memory a) public view returns (uint)
    {uint result = 0;
        for (uint i = 0; i < a.length; i++)
            result += a[i];
        return result;}

    function elementAt(uint index, uint[] memory a) public view returns (uint)
    {return a[index];}

    function set(uint index, uint v, uint[] memory a) public
    {a[index] = v;}

    function get(uint[] memory a) public view returns (address)
    {return uint(a);}

    function bubbleSort(uint[] memory a) public
    {for(uint i = 1; i < a.length; i++)
        {
            if(a[i] < a[i-1])
                swap(i, i - 1);
        }
    }

    function swap(uint i, uint j) public
    {uint temp = a[i];
        a[i] = a[j];
        a[j] = temp;
    }

    function search(uint x, uint[] memory a) public returns (uint)
    {for (uint i = 0; i < a.length; i++)
        {if (a[i] < x)
            {return i;}
    }}}
