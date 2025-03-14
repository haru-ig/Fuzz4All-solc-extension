pragma solidity ^0.8.0;
contract Test {
    ArrayMutationsA array;
    ArrayMutationsB array2;
    ArrayMutationsC array3;
    function getMutatedArray() external view returns (uint256[] memory) {
        return (array.array);
    }
    function getMutatedArray2() public view returns (uint256[] memory) {
        return (array2.array);
    }
    function getMutatedArray3() public returns (uint256[] memory) {
        return (array3.array);
    }
    function mutateArrayFirst() public onlyIfArrayIsEmpty {
        uint256 arrayPositionToMutate = currentLength;
        array.addNewElement();
        array.array[arrayPositionToMutate] += 1;
    }
    function mutateArraySecond() public onlyIfArrayIsEmpty {
        uint256 arrayPositionToMutate = currentLength;
        array.array[arrayPositionToMutate] += 1;
        array.addNewElement();
    }
    function mutateArrayThird() public onlyIfArrayIsEmpty {
        uint256 arrayPositionToMutate = currentLength;
        array.array[arrayPositionToMutate] += 1;
        array.replaceElement(arrayPositionToMutate, 0);
        array.addNewElement();
    }
    function mutateArrayFourth() public onlyIfArrayIsEmpty {
        uint256 arrayPositionToMutate = currentLength;
        array.array[arrayPositionToMutate] += 1;
        array.replaceElement(arrayPositionToMutate, 0);
        array.replaceElement(arrayPositionToMutate, 5);
    }
    function mutateArrayFifth() public onlyIfArrayIsEmpty {
        uint256 arrayPositionToMutate = currentLength;
        array.array[arrayPositionToMutate] += 1;
        array.replaceElement(arrayPositionToMutate, 5);
        uint256[] memory newArray = new uint256[](arrayPositionToMutate/3);
        for(uint256 i = 0 ; i < newArray.length ; i++) {
            newArray[i] = arrayPositionToMutate-1-(i%3);
        }
