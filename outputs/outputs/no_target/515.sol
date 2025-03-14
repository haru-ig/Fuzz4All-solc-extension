pragma solidity ^0.8.0;
contract ContractA {
    uint256 public immutable x= 1;
}
modifier ModifierA {
    ContractA contract;
    uint256 public constant X = 3 * 2 - 2;
    constructor(uint x) public {
        contract = x < X? (contract) : ContractA({value: x * 2, gas: 100}) ;
    }

    function setResultAfter(uint x) public view returns (uint) {
        return x + (x*X);
    }
}

pragma solidity ^0.8.0;
contract ContractA {
    uint256 public immutable x= 1;
}

pragma solidity ^0.8.0;
contract ContractA {
    uint256 public immutable x= uint(1);
}

pragma solidity ^0.8.0;
contract ContractA {
    uint256 public immutable x= 2 ** uint(1);
}

pragma solidity ^0.8.0;
contract ContractA {
    uint256 public immutable x= 1 < 2;
}

constructor(uint x) public{
}
@ModifiersA
modifier ModifierB {
    contract b;
    contract c;
    uint256 public constant X = 3 * 2 - 2;
    constructor(bytes memory c) public {}
    constructor(uint x) public {
        contract = x < X? (contract) : ContractA({value: x * 2, gas: 100}) ;
    }
    assert(x < X);

    modifier ModifierE {
        contract a;
        uint256 x;
        x^= 123456;
        a = 1 * 2 + x * 9;
        c = 3 + a * 4;
    }
    function setResultAfter2(bytes memory c, uint x) public pure returns (uint) {
        return contract.a + (x * 12345) + c;
    }
}
modifier ModifierF {
    string memory s;
   constructor(uint x) public {}
}
constructor(uint x) public{}
