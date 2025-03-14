pragma solidity ^0.8.0;
contract MutatedAbiCoder2 {
    uint constant internal max = 5;
    function encodeNumber(uint8[max+1] memory o, uint8[max+1] memory i) public pure returns (bytes memory) {
        x = o;
        i[0] = x[0];
    }
    function encodeArray(bytes memory o, uint8[max+1] memory i) public pure returns (bytes memory) {
        x = o;
        x[x.length-1] = 0xFF;
        o[o.length-1] = i[0];
    }
    function encodeBytes(bytes memory o, bytes memory i) public pure returns (bytes memory) {
        x = o;
        i[x.length-1] = 1;
    }
    function decodeNumber(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bool) {
        return i[0] == x && x > 0xFF;
    }
    function decodeArray(bytes memory o, uint8[max+1] memory i, uint x) public pure returns (bool) {
        return x <= uint160(i[0]);
    }
    function decodeBytes(bytes memory o, bytes memory i, bytes memory x) public pure returns (bool) {
        return i[x.length-1] == 1 && x > i && x < o;
    }
    function decode(bytes memory o, uint8[max+1] memory i, uint8 x) public pure returns (bytes memory, bytes memory) {
        if(x == 1)
            return (o, "");
        return (o,i[0]);
    }
    uint private x;
}
