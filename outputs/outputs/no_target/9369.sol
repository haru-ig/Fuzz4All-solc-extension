pragma solidity ^0.8.0;
contract semanticallyMutated45
{
    function f() public {
       bytes memory b1 = hex"0x64".sub(hex"fd"));
        for (uint j = 0; j < b1.length; j++){
          b1.sub(hex"ff");
       }
       b1.not();
       b1.sub(hex"1");
       b1.iszero();
    }
}
