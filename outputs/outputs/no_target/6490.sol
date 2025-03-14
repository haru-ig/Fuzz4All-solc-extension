pragma solidity ^0.8.0;
contract modifiers {
    function modifierA() public view returns (uint256){
        uint256 x;
        x -= 256;
        return x;
    }
}
contract myContractA is modifiers {
}
contract myContractB is modifiers {
}
contract myContractC is modifiers {
}
contract myContractD is modifiers {
}
contract myContractE is modifiers {
}
contract myContractF is modifiers {
}
contract myContractG is modifiers {
}
