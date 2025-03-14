pragma solidity ^0.8.0;
contract modifierA{
    function f() public pure returns (uint,uint){
        return (256,257);
    }
}
contract myContractA is modifierA{
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


pragma solidity ^0.8.0;
