pragma solidity ^0.8.0;
import "./GenesisUpgrade.sol";
contract SemanticsUpgrade {

    constructor(GenesisUpgrade gen) public {
        GenesisUpgrade(address(0));
    }
}


pragma solidity ^0.7.6;
contract AnUpgrade {
    GenesisUpgrade public genesisUpgrade;
    constructor() public {
        genesisUpgrade = new GenesisUpgrade();
    }

    function upgrade() public {
        bytes memory input = compileInline(bytes4(keccak256("upgrade()")),"");
        GenesisUpgrade(address(0));
        GenesisUpgrade(address(0));
        address genesisUpgradeAddress = address(this).functionSelector(input);


        genesisUpgradeAddress;

        genesisUpgrade.upgrade();
    }
}
