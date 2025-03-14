pragma solidity ^0.8.0;
contract emulator3x {
  uint y; uint x; uint z;
  function test() public returns(uint) { uint y = 10000000000000; uint x; for (uint i = 0; i < 100; i ++) { x = i; y = y * x; } z = y * x; return 0; }
}





    function toString(bytes memory _string, bytes memory _base) internal pure returns (string memory) {
        bytes memory buf = new bytes(_string.length / 2);
        for (uint i = 0; i < buf.length; i++) {
            buf[i] = bytes1(uint8(uint160(_string[i * 2]) * 256 + uint160(_string[i * 2 + 1])) % (10 ** uint(_base.length)));
        }
        return string(buf);
    }
}

contract createFile {
    bytes memory x;
    function setVariable() public{
        x = BytesLib.toString("A string I put in bytes memory", "hex");
    }
    function changeVariable(bytes memory _x) public returns(bytes memory _xOut){
        _xOut = "Changed value".bytes;
        _x = _xOut;
    }
}
*/
