pragma solidity ^0.8.0;
interface Upgrader1x {
    function upgrade() external returns (bytes32 signature);
}
contract Upgrader3x {
    function migrate(address _from) public returns (bytes32 signature) {
        Upgrader1x(_from).upgrade();
    }
}
contract MyContractUpgrader {
    address public upgraderAddress;
    constructor(address _upgraderAddress) {

    }
    function upgrade() public {




        (bool success, ) = address(this).delegatecall(abi.encodeWithSignature("()"));
        assert(success == false);
        address(_upgraderAddress).delegatecall(abi.encodeWithSignature("()"));
    }
}
contract UpgraderTestContract {
    constructor() public { }


    fallback () external {}

    receive () external {}
}
