pragma solidity ^0.8.0;
contract Mutator
{
    uint[] public array;
    uint public add = 6;
    function reset() public {
        array[0] = add + 1;
        array[1] = add + 2;
        array[2] = add + 3;
    }
    function update(uint _A) public {
        add = _A;
    }
    function increase(uint _increase) public {
        array[1] = array[1] + 2 + _increase;
    }
    function decrease(uint _decrease) public {
        uint[] memory arr = new uint[](3);
        arr[0] = array[1];
        arr[1] = array[2];
        arr[2] = array[0];
        array[0] = arr[2] + add;
        array[1] = arr[0] + add;
        array[2] = arr[1] + _decrease;
    }
    function getAmount() public view returns (uint) {
        return array[1];
    }
}
