pragma solidity ^0.8.0;
contract MutatedEquivalent2
{
    int[] a1;
    function multiplyAdd2() public returns(int)
    {
        a1[0] = 1;
        int b = add(a1);
        if (b > a1[0])
        {
            return b;
        }
        else
        {
            return a1[0];
        }
    }
    int function add(int[] memory _a) internal pure returns (int)
    {
        int[] memory s = new int[](_a.length + 1);
        bool isNegative = false;
        for (int i = 0; i < _a.length; i++)
        {
            s[i] = _a[i];
            s[i+1] = s[i] + (!isNegative? 0 : (0xFF000000));
            isNegative =!isNegative;
        }
        return arrayMin(s);
    }
    int function arrayMin(int[] memory s) internal pure returns (int)
    {
        if (s.length == 1)
        {
            return s[0];
        }
        else
        {
            return addressEqual(s[0], s[1])? arrayMin(s.slice(1, s.length)) : bytesLt(s[0], s[1]);
        }
    }
    bool function bytesLt(bytes memory b0, bytes memory b1) internal pure returns (bool)
    {
        for (uint i = 0; i < b0.length; i++)
        {
            if (b0[i] < b1[i])
            {
                return true;
            }
        }
        return false;
    }
    bool function addressEqual(address addr0, address addr1) internal pure returns (bool)
    {
        return abi.encodePacked(addr0) == abi.encodePacked(addr1);
    }
}
