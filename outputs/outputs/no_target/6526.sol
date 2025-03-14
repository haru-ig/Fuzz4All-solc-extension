pragma solidity ^0.8.0;
contract modifierB1{
    function b(uint x) public pure returns(uint, uint){
        return (uint(x) ^ uint8(2));
    }
}
contract myContractB1 is modifierB1{
}
contract myContractB2 is modifierB1{
}
contract myContractB3 is modifierB1{
}
contract myContractB4 is modifierB1{
}
contract myContractB5 is modifierB1{
}
contract myContractB6 is modifierB1{
}
contract myContractB7 is modifierB1{
}
contract myContractB8 is modifierB1{
}
contract myContractB9 is modifierB1{
}
contract myContractB10 is modifierB1{
}
contract myContractB11 is modifierB1{
}
contract myContractB12 is modifierB1{
}
