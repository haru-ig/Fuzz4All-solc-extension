pragma solidity ^0.8.0;
contract Mutated3 {
    uint constant  ONE = ONE + ONE;
    uint constant ZERONE = ZERO + ONE;
    uint constant ONETwo = ONE + ONE * ONE;
    uint constant ONEth = ONE / ONE;
    uint constant ZEROTwo = ZERO / ZERO;
}

pragma solidity ^ 0.8.0;
contract Two {
  uint constant ONE = 0;
}
pragma solidity ^ 0.8.0;
contract Zero {
  uint constant ONE = 0;
}

pragma solidity ^ 0.8.0;
contract MultiModifier {
    modifier onlyForSelf(Two x){
        if(msg.sender!= x){
            throw;
        }

        _;
    }

    modifier onlyForSelf(Zero x) {
      console.log("onlyForSelf(Zero -> {})", x);
    }
}
