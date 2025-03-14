pragma solidity ^0.8.0;

contract TestDynamicArrays {
    bytes data;
    uint array1[20];
    uint64 [10] memory memorySizeArray;

    function f() public {
      for (uint i = 0; i < 20; i++) array1[i] = i;

      data = abi.encodePacked(array1);
    }

    function getMemorySizeArray() public pure returns(uint[]) {
        uint[] memory sizes = new uint[](20);
        sizes[0] = uint64(array1.length);

        return sizes;
    }

    function getMemorySizeData() public view returns(uint) {
        return getMemorySizeArray()[0];
    }


    function() payable public {
        for (i = 1; i < data.length; i++) {
            data[0][0];
        }
    }
}
