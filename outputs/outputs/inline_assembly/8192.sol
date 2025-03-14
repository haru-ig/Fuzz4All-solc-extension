pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    constructor(uint256 _a) public {
        assembly {
            a := a+1
        }
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    constructor(uint256 _a) public {
        a = _a + 1;
    }
}

pragma solidity ^0.8.0;
contract Mutated {

    uint256 public a;
    constructor(uint256 _a) public {
        assembly {
            a := _a + 1
        }
    }
}
