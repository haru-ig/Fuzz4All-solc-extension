pragma solidity ^0.8.0;
contract ArrayMutationsB {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    function addNewElement() public {
        array.push(currentLength);
        currentLength++;
    }
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            {
                isMutated = true;
                _;
            }
        } else {
            require(false);
        }
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsC {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    constructor() public {

    }
    function addNewElement() public {
        array.push(currentLength);
        currentLength++;
    }
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            address sender;
            sender;
            sender;
            sender;
            _;
        } else {
            require(false);
        }
    }
}
