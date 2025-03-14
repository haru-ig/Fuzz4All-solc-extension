pragma solidity ^0.8.0;
import './IOracle.sol';


contract ArrayTest{
        function test() public {
                IOracle oracle = IOracle(0x254a9ec482d530b215e03ec7e4d20baff249729c);
                for(uint256 i=0; i<100; i++){
                        addresses[] b = new addresses[](100);
                        for(uint256 t=0; t<b.length; t++){
                                b[t] = address(0x1234567890234567890234567890234);
                        }
                        oracle.deposit(address(b), i, 14000000000000*i);
                }
        }
}
