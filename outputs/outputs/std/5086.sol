pragma solidity ^0.8.0;
contract EquivalentMutated {
    function test() public pure returns (uint256) {
        return 2 * b + a;
    }
}
contract EquivalentEquivalentMutated {
    function test() public pure returns (uint256) {
        return (a * 5 + b) * 3;
    }
}
contract EquivalentMutatedEquivalent {
    function test() public pure returns (uint256) {
        return 2 * (b - a);
    }
}
contract Array {
    function sumArrayElements() public pure returns (uint) {
        return (myArray.length * myArray[0] + myArray.length * myArray[1] + myArray.length * myArray[2]);
    }

    function myArrayGetterFunction() public view returns (address) {
        return myArray[0];
    }
}
contract ArrayArray {
    Array[] public array;
    function arraySum() public view returns (uint) {
        uint retval = 0;
        for(uint i = 0; i < array.length; i++){
            retval += array[i].sumArrayElements();
        }
        return retval;
    }
}
contract MutatedArrayArray {
    MutatedArray[] mutatedArray;
    uint internal mutatedArraySum;

    function mutate() public {
        uint valueArray = 200000 * 3 + 50000;
        for(uint i = 0; i < mutatedArray.length; i++){
            mutatedArray[i].mutate(valueArray);
        }
        uint sumArray = mutatedArray.length * mutatedArray[0].b + mutatedArray.length * mutatedArray[1].b + mutatedArray.length * mutatedArray[2].b;
        mutatedArraySum = sumArray + valueArray;
    }
}
contract MutatedMutatedArray {
    bool a = true;
    bool b = false;
    uint c = a;
    uint d = b + c;
    uint e = b * c;
    function mutate() public {
        uint256 value2 = 15000;
        uint256 value1 = 5000;
        a =!a;
        b = a + value1;
        b = b * value2;
        c = b * a;
        d = e;
        d = d - b;
    }
}
contract Random {
    uint private _min;
    uint private _max;
    uint private _nextNum;
    uint private value;
    uint private value1;
    uint256 internal x;
    bytes32 internal _seed
