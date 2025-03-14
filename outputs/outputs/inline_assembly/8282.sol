pragma solidity ^0.8.0;
contract InlineAssembly5{
     function test() public pure returns(bool) {
        bool a;
        bool b;


        assembly {
          a := a + 1
        }


        assembly {
          b := b
        }
        return b;
    }
}
