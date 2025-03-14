pragma solidity ^0.8.0;
contract modifierA{
    function f() public pure returns(uint,uint){
        uint256 x = 2;
        return (x, x);
    }
}
contract myContractB is modifierA{
}
contract myContractC is modifierA{
}
contract myContractD is modifierA{
}
contract myContractE is modifierA{
}
contract myContractF is modifierA{
}
contract myContractG is modifierA{
}
contract myContractH is modifierA{
}
contract myContractI is modifierA{
}
contract myContractJ is modifierA{
}
contract myContractK is modifierA{
}
