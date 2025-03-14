pragma solidity ^0.8.0;
contract modifierB{
    function f(uint x) public pure returns(uint,uint){
        return (x, x / 256);
    }
}
contract myContractA is modifierB{
}
contract myContractB is modifierB{
}
contract myContractC is modifierB{
}
contract myContractD is modifierB{
}
contract myContractE is modifierB{
}
contract myContractF is modifierB{
}
contract myContractG is modifierB{
}
contract myContractH is modifierB{
}
contract myContractI is modifierB{
}
contract myContractJ is modifierB{
}
contract myContractK is modifierB{
}
