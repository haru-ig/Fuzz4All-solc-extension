pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV1Interface {
    constructor() public {}
}

pragma solidity ^0.8.0;
contract EquivalentABIv1Noncompliant {
    constructor() public {}
}
contract EquivalentABIv1Compliant {
    constructor() public {}


}
contract EquivalentABIv08Noncompliant {
    constructor() public {}


}

pragma solidity ^0.8.0;
contract EquivalentInterface {
    function noncompliant() view returns (bool) {

        require(false);
        return true;
    }
    function compliant() public {

    }
}
contract EquivalentContracts {
    address public a;
    mapping(address => address) private b;
    constructor () public {}
}
contract EquivalentContracts_Noncompliant {


}
contract EquivalentContracts_Compliant {


}


pragma solidity ^0.8.0;
contract EquivalentContracts_Noncompliant {
    EquivalentContracts public contr;
    EquivalentContracts contract_without_constructor_082;
    EquivalentContracts public contract_with_constructor_082;
    constructor() public {
        contr = new EquivalentContracts;
        contract_without_constructor_082 = new EquivalentContracts(0);
        contract_with_constructor_082 = new EquivalentContracts(this.balance);
    }
}
contract EquivalentContracts_Compliant {
    EquivalentContracts public contract_without_constructor_082;
    address public contract_with_constructor_082;
    address public contract_with_constructor_083;
    constructor() public {}
}
contract EquivalentContracts_Invalid {
    address public contract_with_constructor_082;
    constructor() public {}
}
contract EquivalentContracts_OnlyContractCanChangeItsInterface_Compliant {
    EquivalentInterface public i;
    constructor()
