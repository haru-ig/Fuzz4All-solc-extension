pragma solidity ^0.8.0;
interface IFace { function testFunc() external returns (uint, uint); }
contract ContractAddress {
        IFace face;
        IToken t1;

        constructor () {
            face = IFace(0xdeAdBeefBeefBeefBeefBeefBeefBeefBeefBeef2981);
            t1 = IToken(0xadad1);
        }


        function testFunc() external view returns(uint c) {
            return c;
        }


        function testFunc2() external view returns(uint, uint) {
            return 100, 0;
        }
}
