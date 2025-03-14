pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidityCodeExample {

    uint x=2;
    function changeXValue(uint newX) pure public {
      x=newX;
    }

    function main() pure public {
      changeXValue(2);
      changeXValue(2);
      changeXValue(2);
      changeXValue(2);
    }
}
contract SemanticallyEquivalentContractExample {
    mapping (bytes32 => bool) notary;
    bytes32 public key;
    bool public contractReady;
    bool public keyRegistered;

    function main() public {
        require(contractReady,"Contract has not yet been deployed.");
        require(keyRegistered,"The Key has not yet been registered.");
        key=ecrecover(msg.sender,uint256(keccak256("First Message Here")));"
        notary[keccak256("First Message Here")] = true
        /*
         * This is the line that compiles to
         */
        (notary[keccak256("First Message Here")]),
          ^--------------------- Address after the function has been executed.
        );
    }

    function deployContract() public payable {

        assembly {
            mstore(0x0, mload(0x40) | 0x80000000000000000000000000000000000e9000000000000000000000000000000)
        }
        contractReady = true;
    }

    function register(address account) public {
        keyRegistered = true;

        assembly {
            mstore(0x0, mload(0x40) | 0x40000000000000000000000000000000000000000000000000000001000000000000000000000)
        }
    }
}
contract SemanticallyEquivalentSolid
