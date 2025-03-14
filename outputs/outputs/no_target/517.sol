pragma solidity ^0.8.0;
contract ContractA {
    uint256 public immutable x=1;
}
pragma solidity ^0.8.0;
contract ContractB {
    uint256 public immutable x;
    constructor(uint256 x_){
        x= x_;
    }
}

pragma solidity ^0.8.0;
contract ContractA {
    uint256 getPublicField(){
        return x;
    }
}
pragma solidity ^0.8.0;
contract ContractB {
    uint256 public immutable x;
    function useX(uint256 x_){
        x= x_;
    }
}
