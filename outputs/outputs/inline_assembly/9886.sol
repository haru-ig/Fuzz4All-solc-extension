pragma solidity ^0.8.0;
contract SemanticsMismatchMutantContract {
    bool public fFalse;
    constructor () {
    }
    function g() public {
        bytes32 y;
        bytes32 x;
        bytes32 z;
        assembly {
            let _false := mload(0)
            let _true := eq(0,0)
            _false := _false || _true


        }
        c();
    }
    function c() public pure {
    }
}


pragma solidity ^0.8.0;
contract EthicsAttacker {
    struct Attack {
        address contractTarget;
        bool toEmission;
        bytes32 result;
        uint numBytes;
        bytes data;
    }
    bytes32 public testResult;
    mapping(bytes32 => Attack) public exploits;

    function runExploit(bytes32 exploitContractAddress, bytes32 exploitTarget, address exploitTargetParent, address contractOwner) public {
        bytes32 calldata exploitCalldata = bytes32(keccak256("test"));
        bytes memory exploitData = abi.encodePacked(
            exploitContractAddress,
            exploitTarget,
            exploitTargetParent,
            contractOwner,
            exploitCallData
        );
        bytes32 exploit = ecrecover(keccak256("test"), exploitData);
        bytes memory exploitDecoded = abi.decode(exploit, (bytes[]), "test");
        require(abi.decode(exploitDecoded[0], (bool)), "test");
        bytes32 exploitedAddress1 = bytes32(exploitDecoded[1]);
        Attack memory attackInfo;
        attackInfo.contractTarget = exploitedAddress1;
        attackInfo.toEmission = true;
        attackInfo.data = exploitDecoded[2];
        attackInfo.numBytes = exploitDecoded[3];
        attackInfo.result = exploitDecoded[4];
        if (exploits[exploit] == 0) {
            attackInfo.toEmission = false;
        }
        exploits[exploit] = attackInfo;
        require(exploits[exploit].contractTarget!= 0x0);
