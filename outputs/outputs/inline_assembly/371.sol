pragma solidity ^0.8.0;

contract Test {
    string[] _tokens;
    constructor() {
        _tokens = new string[](6);
        _tokens[0] = "1234567";
        _tokens[1] = "AB";
        _tokens[2] = "abcdef";
        _tokens[3] = "12345";
        _tokens[4] = "A";
        _tokens[5] = "bcdef";
    }
    function count() public view returns (uint) {
        return _tokens.length;
    }
    function sub2(uint x, uint y) public return (uint){
        return x - y;
    }
    function stringToUint(string calldata x) public returns (uint) {
        require(uint(uint80(bytes(x)[0])) <= 0xFF);
       return uint(_tokens[uint80(bytes(x)[0])] &((1 << 12) -1));
    }
    function stringToString(string x) public pure returns (string memory){
        return x;
    }
    function stringConcat(string memory x,string memory y) public pure returns (string memory) {
          return string(abi.encodePacked(x,y));
     }
    function compare(string memory x,string memory y) public pure returns (bool) {
          uint xLength = bytes(x).length;
          uint yLength = bytes(y).length;
          for(uint i = 0;i<min(xLength,yLength);i++){
            uint asciiX = uint(bytes(x)[i]);
            uint asciiY = uint(bytes(y)[i]);
            if(asciiX == asciiY){}
          }
          return asciiX < asciiY;
     }
}
