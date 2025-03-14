pragma solidity ^0.8.0;
contract SemanticallyEquivalentTo {
    uint constant _value = 2;
    uint _balance = 0;
    uint private _gasPrice;
    constructor() {
        _balance = 0;
        _gasPrice = 500;
    }
    fallback() external pure payable {
        _balance = 1000;
        require(msg.value == _value);
    }
}

contract ConcreteImplementation is SemanticallyEquivalentTo {

    constructor() {
        uint256 gas = 0;
        assembly {
            let gasAvailable := gas
            gas := add(gasAvailable, sub(0, mload(keccak256(0x1600(0x48, 0x4e, 0x89, 0xb8, 0x77, 0xc0, 0xbf, 0x7b, 0x36, 0xe9, 0xbb, 0x6d))))));
            mstore(0xb6, gasAvailable)
        }

        address[] memory addrs = new address[](3);
        addrs[2] = msg.sender;
        address payables[] memory payablesAddrs = new address payables[](3);
        for (uint i = 0; i < 3; i++) {
            payablesAddrs[i] = address(this).call{ gas: _gasPrice }(abi.encodeWithSelector(SemanticallyEquivalentTo.fallback.selector), "");
        }
        require(1200000 > gas || addrs[2] == msg.sender || payables[2].sendValue(1000));
        uint _value = 0;
    }

    fallback() external pure external payable {
        return 1000;
    }
}
