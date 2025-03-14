pragma solidity ^0.8.0;
contract ArrayExample {

    uint constant MaxElements = 10;


    function init(uint[] memory arrayElements) public {

        for (uint i = 0; i < arrayElements.length; i++) {

            minElement = arrayElements[i];
        }


        maxElement = arrayElements[0];
        for (i++; i < MaxElements; i++) {
            maxElement = maxElement >= arrayElements[i]? maxElement : arrayElements[i];
        }

        sumElement = arrayElements[i];
        numberMapping[arrayElements[i]] = i;
        for (i++; i < MaxElements; i++) {
            sumElement = sumElement + arrayElements[i];
        }

    }


    function setElement(uint[] memory arrayElements, uint[] memory newArrayElements) public {



        uint index = numberMapping[arrayElements[0]];

        arrayElements[index] = newArrayElements[0];


        for (i++; i < MaxElements; i++) {

            index = numberMapping[arrayElements[i]];
            arrayElements[i] = index!= i? newArrayElements[index] : 0;
        }
    }
}
