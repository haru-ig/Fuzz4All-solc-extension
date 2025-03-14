pragma solidity ^0.8.0;
contract ArrayMutationsB is ArrayMutationsA{
    function setArray() public {
        array[1] = 14;
    }
}


pragma solidity ^0.8.0;
contract ArrayMutationsC is ArrayMutationsA {
    uint10[] public array;
    uint32 currentLength;
    function addNewElement() public {
        array.push(currentLength);
        currentLength++;
    }
}



pragma solidity ^0.8.0;
contract ArrayMutationsD is ArrayMutationsA{
    uint15[] public array;
    uint32 currentLength;
    function addNewElement() public {
        array.push(currentLength);
        currentLength++;
    }
    function setArray() public {



        isMutated = true;
        {
            array[3] = 9;
        }
        isMutated = false;
    }
}

  "version": "0.4.11",
  "sources": [
    "/home/bsmith/solidity-projects/array-mutations/contracts/ArrayMutationsA.sol",
    "/home/bsmith/solidity-projects/array-mutations/contracts/ArrayMutationsB.sol",
    "/home/bsmith/solidity-projects/array-mutations/contracts/ArrayMutationsC.sol",
    "/home/bsmith/solidity-projects/array-mutations/contracts/ArrayMutationsD.sol"
  ],
  "language": "Solidity",
  "sourceType": "compiled"
}
