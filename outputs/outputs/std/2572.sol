pragma solidity ^0.8.0;
contract Array {
     function push(uint[] memory arr, uint value) public
     {
           arr.push(value);
     }
    function length(uint[] memory arr) public pure returns (uint)
    {
        return arr.length;
    }
    function get(uint[] memory arr,uint i) public pure returns (uint)
    {
        return arr[i];
    }
    function pop(uint[] storage arr) public
    {
         arr.length--;
    }
    function slice(uint[] memory arr, uint start, uint j) public pure returns (uint[] memory)
    {
        uint[] memory arr2 = new uint[](arr.length - j + 1);

        for (uint i = 0; i < j; i++) {
            arr2[i] = arr[i];
        }

        for (uint i = 0; i < arr.length - j; i++) {
            arr2[j+i] = arr[i + j];
        }

        return arr2;
    }
}
