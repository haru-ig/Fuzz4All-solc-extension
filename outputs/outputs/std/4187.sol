pragma solidity ^0.8.0;
contract Convert{
    function ToHexString(address h) public pure returns(string memory hexString) {
        bytes memory b = bytes(h);
        hexString = new string(abi.encodePacked('{'));
        for (uint i = 0; i< b.length; i++) {
          if(i!=0) hexString += ', ';
          hexString += bytes4ToString(b[i] & 0xFF) + bytes4ToString(b[i] >> 8);
        }
        hexString += '}';
    }

    function bytes4ToString(uint myNum) public pure returns(string memory){
        if(myNum<=9) return uintToString(myNum);
        else return string(abi.encodePacked(uintToString(myNum/10), "00", uintToString(myNum%10)));
    }

    function uintToString(uint _val) public pure returns(string memory){
        bytes memory tempBytes = new bytes(2);
        tempBytes[0] = bytes1(uint8(_val));
        tempBytes[1] = bytes1(uint8(_val));
        return string(abi.encodePacked('0x',tempBytes));
    }
}
