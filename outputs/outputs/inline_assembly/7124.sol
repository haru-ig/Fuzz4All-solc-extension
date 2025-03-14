pragma solidity ^0.8.0;
contract OptimizelyExample107Complicated {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; D1 c; }
    struct D3 { uint[] array1; uint[] array2; }
    function test() public {

        x = D3([x, x]);

        x = x ^ x;

        x = D3((x ^ x).data.toU64());

        x = D2(D2({a : x}));

        x = D2(D2({b : D1(x)}) ^ D2({c : x ^ x}));
    }
}



pragma solidity >=0.7.0 <=0.9.0;

contract Regressions {
    function test() public pure {
        int a;
        (a, a) = (1, 1);
    }
}
