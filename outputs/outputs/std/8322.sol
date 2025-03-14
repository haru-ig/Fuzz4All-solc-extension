pragma solidity ^0.8.0;
contract ArrayMutatorB extends ArrayMutationsA {
    constructor(uint _numElements){
        currentLength = _numElements;
    }
    function addMoreElements() public onlyIfArrayIsEmpty { array.push(array.length + currentLength + 1); }
    function multiplyLastElement() public onlyIfArrayIsEmpty { array[array.length - 1] *= 10; }
    function addOneToLastElement() public onlyIfArrayIsEmpty { array[array.length - 1] += 1; array[array.length - 1] = array[array.length - 1] % 10;}
    function setArrayIndexLastElement(uint newArrayIndex) public onlyIfArrayIsEmpty { array[array.length - 1] = newArrayIndex;}
    function getArrayIndexLastElement() public view returns(uint){return array[array.length - 1];}
    function getArrayAsUint() public view returns(uint[]){
        return array;
    }
    function setArrayAsUint(uint[] memory _newArray) public onlyIfArrayIsEmpty {array = _newArray;}
    function returnArrayAsUint() public view returns(uint[]){
        return array;
    }

    function returnArrayIndex(uint a) public view returns(uint){
        return array[a];
    }
    function swapElements(uint a, uint b) public onlyIfArrayIsInitialized {
        uint tempLast = array[a];
        array[a] = array[b];
        array[b] = tempLast;
    }
    modifier onlyIfArrayIsInitialized {
        require(currentLength > 0);
        _;
    }
}
