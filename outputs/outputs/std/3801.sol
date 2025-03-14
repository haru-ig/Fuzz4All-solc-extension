pragma solidity ^0.8.0;
contract Array {
   function findMin(uint[] memory) public pure returns (uint);
   function findMax(uint[] memory) public pure returns (uint);
   function findSum(uint[] memory) public pure returns (uint);
   function setArray(uint[] memory) public;
   function getArray(uint[] memory) public view returns (uint[]);
   function ascendingSort(uint[] memory) public;
}
contract Convert {
   enum DataType {
        Byte,
        Short,
        Int,
        Long,
        Float,
        Double
   }
   function intToData(int _data, uint _type) internal pure returns (uint) {
       bytes memory tmp = abi.encode(_data);
       bytes memory b = new bytes(_type);
       for (uint i = 0; i < tmp.length; i++) {
           b[i] = tmp[i];
       }
       return abi.decode(b, (uint));
   }
   function byteToData(byte _data, DataType _type) internal pure returns (uint) {
       bytes memory tmp = abi.encode(_data);
       bytes memory b = new bytes(4);
       for (uint i = 0; i < tmp.length; i++) {
           b[i] = tmp[i];
       }
       return abi.decode(b, (uint));
   }
}
contract Math {
}
contract Memory {
}
contract Multiprecision {
}
contract Random {
}
interface Sort {
   function ascSort(uint[] memory) public;
   function decSort(uint[] memory) public;
   function nullSort(uint[] memory) public;
}
