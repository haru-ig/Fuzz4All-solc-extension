pragma solidity ^0.8.0;
contract modifierA{
    function f() public view returns (uint256){
        uint256 x;
        x -= 256;

        return x;
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
