pragma solidity ^0.8.0;
contract TestMutatedFallbackCallerYesModifierOld {
    uint _x;
    fallback() external payable returns(uint x){
        return _x + 12;
    }
}

pragma solidity ^0.8.0;
contract TestMutatedFallbackCallerYesModifier2 {
    uint _x;
    fallback() external payable {
        return _x + 12;
    }
}
