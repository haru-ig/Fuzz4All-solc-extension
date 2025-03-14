pragma solidity ^0.8.0;
contract Example6 {
    function callFallback() public {
        Example5.add6Sum([0x23, 0x57, 0x98, 0xBC, 0xFE]);
        Example5(0xD736C67103942fB4565E546052903fD3B6584145);
        Example5.add7Sum(0xD736C67103942fB4565E546052903fD3B6584145, 0xD736C67103942fB4565E546052903fD3B6584145);
        uint x = 0xabcd;
        uint y = 0x9876;
        uint z = Example5.add8Sum(x, y);
        Example6.callFallback();
    }
}
