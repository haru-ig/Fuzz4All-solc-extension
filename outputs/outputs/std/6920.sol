pragma solidity ^0.8.0;
contract Mutation_FunctionCaller4 {
    string constant new_name = "new_name";
    string constant initial_name = "initial_name";
    string initial_array = "\"\";";
    string public name;
    uint256 public count;
    uint256 public count2;
    mapping(uint256 => string) private nameMapping;
    constructor() {
        name = initial_name;
        count = 0;
    }
    function getName() public returns (string storage) {
        return name;
    }
    function setName() public returns (bool) {
        name = new_name;
    }
}
contract MutatingFunction2 {
    uint8 public constant NUM_WORDS_IN_GIGABYTE = 1024 * 1024 * 1024;
    uint256 wordLength;


    function numToHexFP(uint256 x) pure public returns (uint256) {
        uint256 hex;
        return (x == uint256(x))? (uint256(char(7, 'x'))) :
                  ((hex = uint256(uint(x / 16777200.0))) == 256)? (uint256(char(15, 'x'))) :
                   (hex == 257)? (uint256(char(7, 'X'))) :
                    (hex!= x)? (uint256(x)): 0;
    }


    function getStringLength(string memory s) private pure returns(uint256) {
        uint256 length;
        for(uint256 i = 0; i < s.length; i++) {
            length++;
        }
        return length;
    }




    function strlen(bytes memory buf) private pure returns(uint256) {
        uint256 len = 0;
        uint256 byteLeftOver;

        while((byteLeftOver = uint256(buf.length - 1 - len)) > 0) {
            if (buf[len] == 0) {
                return len;
            }
            len++;
        }
        return len;
    }



    function size() private pure returns(int256) {
       int256 length = int256(wordLength);
       int256 lastByte = length % 8;
       if (lastByte > 0) {
           if (lastByte >= 7) {
               return length + 7
