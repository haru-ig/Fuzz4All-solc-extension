pragma solidity ^0.8.0;
contract modifierA{
    function f() public view returns (uint256){
        uint256 x;
        while(true){
            x += 256;
        }
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
