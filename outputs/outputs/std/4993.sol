pragma solidity ^0.8.0;
contract Array {
    uint[] public numbers;
    uint public maxValue;
    uint public minValue;

    function minValueOf(uint[] storage a, uint maxValue) public view returns (uint){
        maxValue = bytes2uint64(abi.encodePacked(maxValue));
        require(maxValue <= a.length);
        uint min = uint(maxValue);
        for(uint i = 0; i < a.length; i++){
            uint num = bytes2uint64(abi.encodePacked(a[i]));
            min = min < num? min : num;
        }
        return min;
    }

    function maxValueOf(uint[] storage a, uint maxValue) public view returns (uint){
        maxValue = bytes2uint64(abi.encodePacked(maxValue));
        require(maxValue <= a.length);
        uint max = uint(maxValue);
        for(uint i = 0; i < a.length; i++){
            uint num = bytes2uint64(abi.encodePacked(a[i]));
            max = max > num? max : num;
        }
        return max;
    }

    function arrayToVector(uint[] storage a, uint length) internal view returns (uint[] memory b) {
        b = new uint[](length);
        for(uint i = 0; i < a.length; i++){
            b[i] = bytes2uint64(abi.encodePacked(a[i]));
        }
    }

    function uintToVector(uint[] memory memory a, uint length) internal view returns (uint[] memory b) {
        b = new uint[](length);
        for(uint i = 0; i < a.length; i++){
            b[i] = bytes2uint64(abi.encodePacked(a[i]));
        }
    }



    function Array() public {

        numbers.push(0);
        maxValue = 0;
        minValue = 99;
    }

    function getValue(uint i) public view returns (uint){
        require(i < numbers.length);
        return numbers[i];
    }


    function setMin(uint newValue) public{
        maxValue = newValue;
    }

    function getMin() public view returns (uint){
        return minValue;
    }

}
