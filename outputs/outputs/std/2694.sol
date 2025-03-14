pragma solidity ^0.8.0;

contract Array
{

    uint[] public myArray;


    function Array() {
      myArray.push(1);
      myArray.push(2);
    }


    function add(uint x) public returns(uint) {
        myArray.push(x);
        return myArray.length;
    }


    function min() public view returns (uint) {
      require(myArray.length > 0);
      return myArray[0];
    }


    function max() public view returns (uint) {
      require(myArray.length > 0);
      return myArray[myArray.length - 1];
    }


    function sum() public view returns (uint) {
        uint x = 0;
        for (uint i = 0; i < myArray.length; i++) {
            if (i == 0) {
                x += myArray[i];
                continue;
            }
            x += myArray[i];
        }
        return x;
    }

    function reverseArray(uint[] memory input) public pure returns(uint[]) {
        uint[] memory output;

        for (uint i = 0; i < input.length; i++) {
          output[i] = input[input.length - i - 1];
        }

        return output;
    }


    function first() public view returns (uint a) {
      return myArray[0];
    }

    function last() public view returns (uint a) {
      require(myArray.length > 0);
      return myArray[myArray.length- 1];
    }
}

pragma solidity ^0.8.0;
contract Convert
{
    bytes32[] public alphabet = bytes32("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".split(""));
    function convert(bytes memory input) public pure returns(bytes memory)
    {
        if (input.length ==  0) {
            revert('Input too short');
        }
        for (uint i = 0; i < input.length; i++) {
            byte item = byte(input[i]);
            uint index = alphabet.length;
            for (uint j = 0; j < alphabet.length; j++)
            {
                if (alphabet[j] == byte(input[i])) {
                    index = JUNGLE_LETTERS_TO_INDEX[index - 1];
                }
            }
            input[i++] = byte(index);
        }
        return input;
    }


    bytes32 JUNGLE_LETTERS_TO_INDEX["0" to "9" of "A" to "Z"];
    uint JUNGLE_
