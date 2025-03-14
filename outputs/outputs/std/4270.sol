pragma solidity ^0.8.0;

contract Mutated
{

    function mod2(uint256 idx) public {
        IArray iArray = IArray(0xB4d8D307426086Ab5F0F9200cD650e534D9D3A86);
        iArray.mod(idx, 2);
    }
}
