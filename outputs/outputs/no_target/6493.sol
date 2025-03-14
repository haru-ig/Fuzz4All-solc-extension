pragma solidity ^0.8.0;
contract modifierB{
    function f() public view returns (uint256){
        uint256 x;
        x += 256;
        return x;
    }
}
contract myContractA is modifierB, modifierA{
}
contract myContractB is modifierB, modifierA{
}
contract myContractC is modifierB, modifierA{
}
contract myContractD is modifierB, modifierA{
}
contract myContractE is modifierB, modifierA{
}
contract myContractF is modifierB, modifierA{
}
contract myContractG is modifierB, modifierA{
}

pragma solidity ^0.8.0;
contract modifierC{
    function f() public view returns (uint256){
        uint256 x;
        x *= 256;
        return x;
    }
}
contract myContractA is modifierB, modifierA, modifierC{
}
contract myContractB is modifierB, modifierA, modifierC{
}
contract myContractC is modifierB, modifierA, modifierC{
}
contract myContractD is modifierB, modifierA, modifierC{
}
contract myContractE is modifierB, modifierA, modifierC{
}
contract myContractF is modifierB, modifierA, modifierC{
}
contract myContractG is modifierB, modifierA, modifierC{
}
