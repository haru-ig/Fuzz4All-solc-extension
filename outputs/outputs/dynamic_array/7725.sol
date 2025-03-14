pragma solidity ^0.8.0;
contract Test39{
    uint[2] array;
    uint256 value;
    function f() public returns(uint256){
        array[1]=3;
        value=array[1];
        return value;
    }
}

contract Test40{
        function f(uint[2] memory a) public returns(uint256){
                a[1]++;
                return a[1];
        }
}
