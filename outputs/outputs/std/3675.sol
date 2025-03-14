pragma solidity ^0.8.0;
contract ArrayExample {

    uint[] public array;


    function pushUp(uint value) public {
        _increment();
        array.push(value);
    }


    function peek(uint startIndex) public view returns(uint) {

        return array[startIndex];

    }


    function pop(uint startIndex) public {
        _decrement();
        array[startIndex] = array[array.length-1];
        array.length--;
    }


    function set(uint startIndex, uint value) public {
        array[startIndex] = value;
    }


    function reset(uint startIndex, uint value) public {

        array[startIndex] = value;

    }


    function min() view public returns (uint) {

        if (array.length > 0) {
            minElement = array[0];
            return array[0];
        } else {
            return 0;
        }

    }


    function max() view public returns (uint) {

        if (array.length > 0) {
            maxElement = array[0];
            return array[0];
        } else {
            return 0;
        }

    }


    function sum() view public returns (uint) {

        if (array.length > 0) {
            sumElement = 0;
            for (uint index = 0; index < array.length; index++) {
                sumElement += array[index];
            }
            return sumElement;
        } else {
            return 0;
        }

    }


    function getLength() view public returns (uint){
        return array.length;
    }


    function _increment() private {
        if (array.length > 0) {
            array.push(0);
        }

    }


    function _decrement() private {
        if (array.length > 0) {
            array.pop();
        }

    }

}
