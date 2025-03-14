pragma solidity ^0.8.0;
contract Mutated
{
    uint[] public _numbers;

    function() external payable {
        _numbers.push(msg.value);
    }

    function getSumArray() public pure returns(uint){
        uint total = 0;
        for (uint i = 0; i < _numbers.length; ++i){
            total += _numbers[i];
        }
        return total;
    }
}
