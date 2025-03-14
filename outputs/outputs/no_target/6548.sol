pragma solidity ^0.8.0;
contract modifierB{
    function f(uint x, uint y) public pure returns(uint){
        uint total = x + y;
        uint y0 = uint(total) / 256;
        return x * 300 - y0;
    }
}
contract myContractB is modifierB{
    function g(uint x, uint y) pure public returns (uint){
        return x * 2500 + y;
    }
}
contract myContractC is modifierB{
    function g(uint x, uint y) pure public returns (uint){
        return x * 3000 + y;
    }
}
contract modifacet {
    function f(uint x, uint y) public pure returns (uint){
        return mod(x, 256) + mod(y, 256);
    }
    function f(uint x, uint y, uint z) public pure returns (uint){
        return mod(x, 256) + mod(y, 256) + mod(z, 256);
    }
}
contract modifacet2 {
    modifierB
    modifierC
    modifierR{
        function test(uint x) pure public returns(uint){
            uint total = mod(x, 256) + mod(x, 10);
            return mod(100 * total, 2560);
        }
    }
    function f(uint x, uint y) public pure returns (uint){
        return mod(x, 256) + mod(y, 256);
    }
}
contract modifierR is modifierB, modifierC{
    function test(uint x) pure public returns (uint){
        uint total = mod(x, 256) + mod(x, 256);
        return mod(x, 2560) - mod(100 * total, 2560);
    }
}
contract MyContractC is modifacet, modifierC, modifierR{
    function test(uint num) pure public returns (uint){
        uint total = num + 30;
        return 100 * mod(total, 256) + 200 * mod(total, 10);
    }
}
contract modifier4{
    function t() public pure {
        selfdestruct(msg.sender);
    }
}
contract modifier5 is modifier4{
    function t() public pure {
        selfdestruct(msg.sender
