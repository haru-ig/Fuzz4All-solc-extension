pragma solidity ^0.8.0;
contract BogusCaller {
    function send() public {
        assembly {
        }
    }
}
contract MovedContractCaller {
    address contract_;

    function MovedContractCaller(address contract_) {
        this.contract_ = contract_;
    }

    function send() public {
        assembly {
            delegatecall(gas(0), 0, add(this, 0x10), calldatasize, contract_, 0, 0)
        }
    }
}

pragma solidity ^0.8.0;
contract BogusCaller {
    function send() public {
        assembly {
        }
    }
}
contract MovedContractCaller {
    address contract_;

    function MovedContractCaller(address contract_) {
        this.contract_ = contract_;
    }

    function send() public {
        assembly {
	    mstore(0x100, or(sload(0x100), 1))

	    calldatacopy(0x100, 0, 80)
	    let result := delegatecall(gas(0), 0, add(this, 0x10), 80, contract_, 0, 0)
	    mstore(0x100, mload(0x100))
        }
    }
}
