pragma solidity ^0.8.0;
contract ArrayMutationsD {
    uint256 public arrayOne;
    uint256 public arrayTwo;
    uint256[] public arrayThree;
    bool isMutated;
    bool arrayOneChanged;
    bool arrayTwoChanged;
    function addArrayToTheArray() public {
        arrayOneChanged = true;
        arrayOne = 0;
        arrayTwoChanged = true;
        arrayTwo = 0;
        arrayThree.push(0);
        arrayThree.push(0);
        arrayThree.push(0);
    }
    modifier onlyChangeIfArrayOneAndArrayTwoNotAllZero {
        if(arrayOne!= 0 && arrayOne!= 0 && arrayTwo!= 0) {
            require(false);
        } else {
            _;
        }
    }
}
contract ArrayMutationsE {
    string public alphabet;
    function returnAlphabet() public {
        alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsF {
    uint256 public arrayE;
    uint256 public arrayF;
    string public alphabet;
    uint256[] alphabetArray;
    function returnValues() public {
        return (arrayE, arrayF, alphabet);
    }
    function returnAlphabetAndArray() public {
        return (alphabet, alphabetArray);
    }
    function addNewLetter() public {
        alphabetArray.push(1);
        arrayF = 0;
    }
    modifier onlyIfArrayLengthIsOdd {
        if(arrayE % 2==1) {
            _;
        } else {
            require(false);
        }
    }
}
contract ArrayMutationsG {
    uint256 public arrayE;
    uint256 public arrayF;
    string public alphabet;
    uint256[] alphabetArray;
    function returnValues() public {
        return (arrayE, arrayF, alphabet);
    }
    function returnAlphabetAndArray() public {
        return (alphabet, alphabetArray);
    }
    function add
