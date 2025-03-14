pragma solidity ^0.8.0;
contract MutatedExample{
    uint256 initialData;
    function init(uint256 initVal){
        initialData = initVal;
    }
    function func2(uint256 val, uint256 val1) public view returns (uint256){
        return initialData + val + val1;
    }
}
contract MutatedExample2{
    struct StoredValues{
        uint256 data1;
    }
    uint256 initialData;
    function init(uint256 initVal){
        initialData = initVal;
    }
    function getData() public view returns (uint256){
        return initialData;
    }
}
