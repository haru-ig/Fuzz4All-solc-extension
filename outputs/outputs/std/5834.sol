pragma solidity ^0.8.0;
contract Mutated16{
    function mutated16(uint[] memory) public pure returns (uint) {
        uint[] memory h;
        uint i = 1;
        uint len = a.length;
        while(a[0]!=15)
        {
            h[i] = a[0];
            i++;
            a[0] = 15;
            a.length = i;
        }
        h[i] = a[0];
        return h[i];
    }
}
