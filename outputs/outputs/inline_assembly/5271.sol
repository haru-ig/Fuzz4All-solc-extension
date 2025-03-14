pragma solidity ^0.8.0;
uint32 constant initIB = 2;


contract Q {
    uint32 public ib;
    IContract public i;
    function initib(uint32 num) public {
        uint32 initib2 = num * initIB;
        ib = initib2;
    }
    function seti(IContract _i) public {
        i = _i;
    }
}





contract Q2 is Q {"use inline assemby"} {
    constructor () public{
        initib(1);
    }
    function seti(IKnownAddress _i) public {
        i = IKnownAddress(_i);
    }
}

pragma solidity ^0.8.0;

interface IKnownAddress {
    address internal keeperAddress() external;
}
