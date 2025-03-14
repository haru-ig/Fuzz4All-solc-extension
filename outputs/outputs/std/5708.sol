pragma solidity ^0.8.0;
contract Memory1{
    uint private p0;
    uint public p1;

    constructor(){
        p0 = memoryGetMemorySize() ** 2 + p1;
    }
    function memoryGetMemorySize() public pure returns (uint){
        return 80;
    }
}

pragma solidity ^0.8.0;
contract Array2{
    uint[] public nums;
    uint min;
    uint max;
    constructor(){
        nums.push(9,8,7,6,5,4,3,2,1,0);
        min = nums[0];
        max = nums[nums.length - 1];
    }
    function getMin() public view returns(uint){
        return min;
    }
    function getMax() public view returns(uint){
        return max;
    }
    function getLength() public view returns(uint){
        return nums.length;
    }
    function setMin() public{
        bool done = false;
        uint i = 0;
        while(!done){
            min = nums[i];
            i += 1;
            done = (i >= nums.length);
        }
    }
    function setMaxValue() public{
        bool done = false;
        uint i = nums.length - 1;
        while(!done){
            max = nums[i];
            i -= 1;
            done = (i < 0);
        }
    }
    function pushData() public{
        uint elemA = uint(uint(uint8(1))<<uint(uint8(7)) + uint8(2));
        uint elemB = uint(uint(uint8(1))<<uint(uint8(6)) + uint8(10));
        bool done = false;
        uint i = 0;
        while(!done){
            nums.push(elemA, elemB, elemA, elemB, elemA, elemB, elemA, elemB, elemA, elemB);
            i += 1;
            done = (i >= nums.length) || (elemA >= 20);
        }
    }
}

pragma solidity ^0.8.0;
contract Array3{
    uint[] public nums;
    uint min;
    uint max;
    constructor(){
        nums.push(9,8,7,6,5,4,3,2,1,0);
        min = nums[0];
        max = nums[nums.length - 1];
        if (min > 2 * max)
            min = 2 * max;
    }
    function getMin() public view returns(uint){
        return min;
    }
    function getMax() public view returns(uint){
        return max;
    }
    function getLength() public view returns(uint){
        return nums.length;
    }
}
