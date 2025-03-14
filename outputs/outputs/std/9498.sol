pragma solidity ^0.8.0;
contract Mutate2 {
    string public mystring;
    function ()public payable{
        mystring = 'The address of this contract is '+address(this).toHexString();
    }
    function setstring2(String1 memory newstring) public {
        mystring = newstring;
    }
    function myFun (Address_memory _address) public payable {
        string memory myMem;
        myMem = 'the address of this contract is'+ address(_address).toHexString();
    }
}

pragma solidity ^0.8.0;
contract ArrayLib {
    uint[10] public myArray;

    function setArray1(uint[10] memory _newArray) public {
        myArray = _newArray;
    }

    function setArray2 (MyArray memory _array) public {
        return myArray = _array.myArray;
    }

    function setArray(String memory _string) public {
        return myArray[:length(myArray)] = toUintArray(_string);
    }

    function toUintArray (String memory str) public pure returns (uint[10] memory a) {
        bytes memory b = bytes(str);
        for(uint i=0; i < 10; i++) a [i] = uint(bytes1(b[i]));
    }
}

pragma solidity ^0.8.0;
contract ArrayMut {
    uint[10] public myArray;

    function setArray1() public {
        myArray[3] = 33;
    }

    function setArray2() public {
        myArray[0] = 2;
    }

    function setArray3 (MyArray memory _array) public {
        _array.myArray[9] = 1;
    }

    function setArray() public {
        myArray[:10]+=myArray[0];
    }
}

pragma solidity ^0.8.0;
contract Capitalization {
    function capitalize(string memory sentence) public pure returns (string memory s) {
        bytes memory b = bytes(sentence);
        for(uint i=0; i < 2; i++) {
            bytes1 c1 = b[i];
            if (c1 >= ('a'. ASCIIcode < 'z'. ASCIIcode)) {
                c1 -= 32;
            }
            b[i] = bytes1(c1);
        }
        return string(b);
    }
}
