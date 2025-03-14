pragma solidity ^0.8.0;
contract UseInlineAssembly {
     function returnMultipleReturn() public pure returns(uint8, uint)
     {
        uint num = 2;
        uint x = 1;
        uint z = 10;
        uint8 returnByte = 1;
        for(uint i = 0; i < 5; i++)
        {
           returnByte = 2;
           uint x = 1;
           num = num * z;
           uint x = z + 2;
        }
        uint num2 =  10 / (z + z + z + 10);
        uint num3 = num;
        num3 = (num3 * (x * num * (x + num + num2) +100)) + 101;
        num3 = num2;
        uint x = (num3 * num * num2)  + num2;
        uint x = num1;
        return (returnByte, x);
     }
}
