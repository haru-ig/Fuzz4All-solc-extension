pragma solidity ^0.8.0;
contract Example
{
    uint[492786] arr;
    function getter() public view returns(uint[]) {
        return arr;
    }
    function setter(uint[492786] calldata _arr) public {
        arr = _arr;
    }
}
