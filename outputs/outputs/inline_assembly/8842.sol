pragma solidity ^0.8.0;
contract Test
{
    uint int_max = 2**32 - 1;
    uint x = 2**33 - 1;
    uint y;
    mapping (address => uint8) public int_array;
    function deploy(address _contract, uint x) public {
        uint y = x / int_max;
    }
    function test() public {
        y = x / int_max;
        int_array[_contract] = 1;
    }
}
