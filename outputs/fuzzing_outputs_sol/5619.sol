pragma solidity ^0.8.0;
contract semanticallyequivalentmutate
{
    function f(uint x, uint y, uint z) public pure returns (uint a) {
        a = y + 1;
        return a;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalentmulti {
    address payable contractAddress1;
    address payable contractAddress2;
    address payable contractAddress3;
    constructor() payable {
        contractAddress1 = payable(new semanticallyequivalent());
        contractAddress2 = payable(new semanticallyequivalent());
        contractAddress3 = payable(new semanticallyequivalent());
    }
    function f(uint x, uint y, uint z) public pure returns (uint a) {
        if (a == uint(0))
            a = x == 0? contractAddress1.call(abi.encodeWithSelector(semanticallyequivalent.f.selector, x,
        uint(0), y)) : x;
    }
}
