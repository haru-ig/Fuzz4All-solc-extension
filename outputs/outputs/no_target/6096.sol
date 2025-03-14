pragma solidity ^0.8.0;
contract Mod13 {
    uint public result;
    function mod13(uint) public returns (uint)
    {
        result = mod13(result);
        result = mod13(result);
        return result;
    }
}
