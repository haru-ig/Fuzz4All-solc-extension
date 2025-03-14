pragma solidity ^0.8.0;
contract Array {

    uint256[] public myarray;
    function setArray(uint256[] memory newarray) public{
        myarray = newarray;
    }

    uint256 min() public pure returns (uint256){
        uint256 min = myarray[0];
        for(uint256 i = 1; i < myarray.length; i++) {
            if(myarray[i] < min) {
                min = myarray[i];
            }
        }
        return min;
    }

    uint256 max() public pure returns (uint256) {
        uint256 max = myarray[0];
        for (uint256 i = 1; i < myarray.length; i++) {
            if (myarray[i] > max) {
                max = myarray[i];
            }
        }
        return max;
    }

    function getSum() public pure returns (uint256){
        uint256 sum = 0;
        for(uint256 i = 0; i < myarray.length; i++) {
            sum += myarray[i];
        }
        return sum;
    }

    function setget(uint256[] memory newmyarray) public {
        myarray = newmyarray;
    }

    function printArrayItems() public view {
        string memory temp;
        for(uint256 i = 0; i < myarray.length; i++) {
            temp += myarray[i];
            temp += " ";
        }
        console.log(temp);
    }

    function merge() public {
        uint256 n = myarray.length;
        for(uint256 i = n - 1; i > 0; --i) {
            uint256 j = randrange(0, i);
            uint256 temp = myarray[j];
            myarray[j] = myarray[i];
            myarray[i] = temp;
        }
    }

    function countDistinct(uint256[] memory distinctArray) public view {
        uint256 count = distinctArray.length;
        uint256[] storage list = new uint256[](distinctArray.length+1);
        list[0] = count;
        for (uint256 i = 0; i < count; i++) {
            list[i+1] = distinctArray[i];
        }
        for (uint256 i = 2; i <= count; i++) {
            distinctArray[distindex(distinctArray, i, list.length - 1)] = list[i];
        }
    }



    function distindex(uint256[] memory A, uint256 value, uint256 _length) pure internal returns (uint256) {
        uint256 result = value % _length;
        if (A[result] == value) {
            return result;
        }

        for (uint256 i = result
