pragma solidity ^0.8.0;
contract ArrayMutator {
    function deleteFirst(uint arrayData, uint deleteNumber) public {
       arrayData.splice(0, 1);
    }

    function increaseFirst(uint arrayData, uint newNumber) public {
       arrayData.push(newNumber);
    }

    function prependFirst(uint[2] memory arrayData, uint newNumber) public {
       arrayData.push(newNumber);
       arrayData.push(0);
    }

    function increaseFirstValue(uint[] memory arrayData, uint newNumber) public {
       uint value0 = arrayData[0];
       arrayData[0] = newNumber;
    }

    function increaseFirstValue2(uint[] memory arrayData, uint value1, uint newNumber) public {
       arrayData[0] = value1;
       arrayData.push(newNumber);
    }

    function increaseFirstValue3(uint[2] memory arrayData, uint value1, uint newNumber) public {
       arrayData[0] = value1;
       arrayData.push(newNumber);
       arrayData[1] = 0;
    }

    function increaseFirstAndSecond(uint arrayData, uint secondToIncrease, uint newNumber) public {
       arrayData.push(secondToIncrease);
       arrayData.push(newNumber);
    }

    function increaseSecond(uint arrayData, uint newNumber) public {
       arrayData.push(newNumber);
    }

    function prependOneAndOne(uint[2] memory arrayData, uint newFirstElement) public {
       arrayData.push(newFirstElement);
       arrayData.push(newFirstElement);
    }

    function prependOneAndOneAndOne(uint[3] memory arrayData) public {
       arrayData.push(newFirstAndOne);
       arrayData.push(0);
    }

    function prependOneAndOneAndOneAndZero(uint[3] memory arrayData, uint[1] memory secondToPrepend) public {
       arrayData.push(newFirstElement);
       arrayData.splice(0, 1);
       arrayData.splice(0, 0, secondToPrepend);
    }

    function prependThree(uint[2] memory arrayData, uint[1] memory thirdToPrepend) public {
       arrayData.splice(0, 0, arrayData);
       arrayData.unshift(thirdToPrepend);
    }

    function prependThreeAndOne(uint[3] memory arrayData, uint[1] memory thirdToPrepend) public {
       arrayData.splice(0, 0, arrayData);
       arrayData.unshift(thirdToPrepend);
       arrayData.push(2);
    }
}
