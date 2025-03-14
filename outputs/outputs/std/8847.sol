pragma solidity ^0.8.0;
contract Array{
    uint m;
    address[m] internal arrayA;
    uint internal numberA;
    uint internal numberB;
    uint internal numberC;
    mapping(uint => uint) private numberMap;
    event NewArray(uint number, uint number2);
    function getNumberA() public view returns (uint256){
        return numberA;
    }
    function getNumberB() public view returns (uint256){
        return numberB;
    }
    function getNumberC() public view returns (uint256){
        return numberC;
    }
    function set(uint number) public{
        uint number2 = numberA + numberB;
        numberMap[number] = numberA + numberB;
        arrayA[number] =  number2;
        if(arrayA[9]==1234569700)numberC=9;

        numberC = 123 + arrayA[9];
    }
    function setArrayA(uint[3] memory arrayA_) public{
        m = 3;
        for(uint256 i = 0; i < 3; i++){
            arrayA[i] = arrayA_[i];
        }
        assert(arrayA[m]== 1234569700);
    }
    function getArrayA() public view returns (uint32[3]){
        return arrayA;
    }
    function get(uint number) public view returns(uint256){
        uint number2;
        if(number <= 9)
        {
            number2 = numberA + numberB;

        }else if (number <= 12){
            number2 = 0;
        }else{
            number2 = arrayA[number];
        }
        return number2;
    }
    function getArray() public view returns (uint[3]){
        return arrayA;
    }
    function getMin() public view returns (uint256){
        uint min;
        for (uint i = 10; i >= 0; i--)
        {
            if (min > arrayA[i])
            {
                min = arrayA[i];
            }
        }
        return min;
    }
    function getMax() public view returns (uint256){
        uint max;
        for (uint i = m-1; i >= 0; i--)
        {
            if (max < arrayA[i])
            {
                max = arrayA[i];
            }
        }
        return max;
    }
    function setMin(uint number) public{
        arrayA[0] = number;
    }
    function setMax(uint number) public{
        uint[3][m-1] storage arrayA_ = arrayA;
        uint[3] memory arrayA__ = arrayA_[0];
        arrayA__[0] = 0;
        uint min = getMin();
        uint max = getMax();
        for (uint i = 0
