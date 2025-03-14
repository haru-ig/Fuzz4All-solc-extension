pragma solidity ^0.8.0;
contract HelloWorld2 {
    function heyx() public pure returns(string memory) {
       return "Hello, X";
    }
}


pragma solidity ^0.8.0;
contract Bytes32String {
    function getBytes32String(uint _dataLength, bytes memory _data) public pure returns(string memory) {
         uint _dataLength = _data.length;
         string memory result = "!  ";
         for(uint i = 0; i < _dataLength; i+= 1) {
             uint8 _byte = _data[i];
             uint temp = uint(uint8(uint(_byte)) >> 4);
             uint numString = bytes32(uint(uint(_byte)) & 0xF);
             result = string(abi.encodePacked(result, temp.toString(), numString.toString(16)));
         }
         return result;
    }
}
