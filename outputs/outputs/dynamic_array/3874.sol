pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        b1[0][0].push(0);
        b1[0][0].push(0);
        b1[0][1].push(0);
        b1[0][1].push(0);
        b1.push(0, 1, 0, 1);
    }
}


pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        b1 = arrayA;
    }
}





pragma solidity ^0.8.0;
contract C {
    uint[][][2] b2;
    constructor () public {
        b2 = new uint[5][];
        b2[0][0].push(0);
        b2[0][0].push(0);
    }
}


pragma solidity ^0.8.0;

library ArraySort {


    function selectionSort(uint[] calldata arr) internal pure {
        for (uint i = 0; i < arr.length; ++i) {
            uint min = i;
            for (uint j = i + 1; j < arr.length; ++j) {
                if (arr[j] < arr[min]) {
                    min = j;
                }
            }

            uint tmp = arr[min];
            arr[min] = arr[i];
            arr[
