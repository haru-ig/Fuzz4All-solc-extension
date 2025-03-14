pragma solidity ^0.8.0;
contract ExampleContract {
    uint16 value;
    function set() public pure {
        value = 5;
    }
    function getSum() public view returns (uint){
        return getSum(value);
    }
}
