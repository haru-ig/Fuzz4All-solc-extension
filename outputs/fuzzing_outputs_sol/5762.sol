pragma solidity ^0.8.0;
contract semanticallyequivalent21
{
    function call_semanticallyequivalent20_fallback() public payable z_greater_than_0 returns (bool){
        return semanticallyequivalent20(address(this).balance).test20.value(msg.value)();
    }
}
