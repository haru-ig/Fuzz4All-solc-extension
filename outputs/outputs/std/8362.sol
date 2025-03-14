pragma solidity ^0.8.0;
contract ArrayMutationsBis2 is ArrayMutationsBis1 {
    uint256[] public initialArray;
    uint256[] public initialArrayOfIntegers;

    function constructorForExistingArray() public {
        isMutated = false;
        value = 1;
        uint256[] memory initialArray = [1];
        initialArray.push(value);

        uint256[] memory initialArrayOfIntegers = [1];
        initialArrayOfIntegers.push(value);

        for(uint256 i=0; i<array.length; i++) {
            array[i] = initialArray[i];
        }
        for(uint256 i=0; i<arrayOfIntegers.length; i++) {
            arrayOfIntegers[i] = initialArrayOfIntegers[i];
        }
    }
    modifier onlyIfNotMutated {
        if(isMutated == false) {
            _;
        } else {
            require(false);
        }
    }
    modifier onlyBeforeArrayInitialization {
        if (array[0] == 1) {
            _;
        } else {
            require(0);
        }
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsBis3 is ArrayMutationsBis2 {
    uint256[] internal mutableArray;
    uint256[] internal mutableArrayOfIntegers;

    function constructor() public {
        uint256[] memory initialArray = [1];
        mutableArray = initialArray;
        mutableArrayOfIntegers = initialArrayOfIntegers;

        for(uint256 i=0; i<initialArrayOfIntegers.length; i++) {
            mutableArrayOfIntegers[i] = initialArrayOfIntegers[i];
        }
        for(uint256 i=0; i<initialArray.length; i++) {
            mutableArray[i] = initialArray[i];
        }
    }
    modifier onlyIfNotMutated {
        if (mutableArray.length == 0) {
            _;
        } else {
            require(false);
        }
    }

    modifier onlyBeforeArrayInitialization {
        if (array[0] == 1) {
            _;
        } else {
            require(0);
        }
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsBis4 is ArrayMutationsBis3 {
    uint256[] mutatableArray;

    function constructor() public {
        isMutated = true;
        uint25
