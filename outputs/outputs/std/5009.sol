pragma solidity ^0.8.0;
contract Convert {
   uint256 constant public HEX2DEC = 2 ** 16;
   uint256 constant constant decimalToHex = 10 ** decimals;

   uint256 constant constant hexToDec = 2 ** 16 - 1;

   mapping(uint256 => uint256) private _idToName;
   mapping(uint256 => string) _stringToName;
   mapping(uint256 => bytes32) private _nameToId;
   mapping(uint256 => bool) private _nameToBool;
   mapping(uint256 => uint8) private _bytesToByte;
   mapping(uint256 => int256) private _byetToString;
   uint256[13] private _ints;
   uint256[3700] private _arrays;
   uint256[5] private _floats;
   uint256[17] private _doubles;
   uint256[2] private _negatives;
   mapping(uint256 => uint256) private _idToId;

   bytes16 constant private ASCII = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

   function idToName(uint256 id) internal pure returns (bytes16){
        if (_stringToName[id] == bytes32(0)) {
            _idToName[id] = bytes32(id);
            return bytes16(id);
        } else {
            return bytes16(_stringToName[id]);
        }
    }

   function nameToId(bytes16 name) internal pure returns (uint256) {
        var id = _stringToId[name];
        if (id == 0) {

            for(uint256 i=0;i<_stringToName.length;i++)
                if (_stringToName[i] == name)
                    id = i;
            _idToId[name] = id;
            _nameToId[id] = name;
        }
        return id;
    }

   function nameToBool(bytes16 name) internal pure returns (bool) {
        for (uint256 i = 0; i < nameToId.length; i++)
            if (asciiLowerAscii(name) == asciiLowerAscii(_nameToId[i]))
                return _nameToBool[i];
        return false;
   }

   function asciiLowerAscii(bytes16 asciiName) internal pure returns (bytes16) {
       uint256 len;
       assembly {
           len := mload(asciiName)
       }
       bytes memory newAscii;
       assembly {

           let dst := mload(0x40)
           let src := add(asciiName, 32)
           for{let i := 0} mlt(i, len, 2){let j
