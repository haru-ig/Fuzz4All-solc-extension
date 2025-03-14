pragma solidity ^0.8.0;
contract SemanticCheckSemanticsIncorrect {
    function add3(uint a)
        public pure
    returns
        (uint)
    {
        return a + 1;
    }
}
contract Contract02 {
   int i = 0;
   uint w;
   uint p = uint235(0xfffffffffffffffffffffff8ull);
   int p18;
   int96 l = -96;

   function test() public {
    SemanticCheckSemanticsIncorrect semCheck = SemanticCheckSemanticsIncorrect(1);
    i = semCheck.add3(97);
    w = p;
    p18 = int96(-320);
    l = int96(-320) + 3432;
   }
}
