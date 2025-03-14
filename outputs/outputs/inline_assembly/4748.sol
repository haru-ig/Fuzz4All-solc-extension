pragma solidity ^0.8.0;
interface iCounter {
    uint256 counter();
}
contract MyContract {
   address public counterFactory;

    constructor(address counterFactory_) {
        counterFactory = counterFactory_;
    }
}
contract Mutator120 {
    bool isInitialized;

    function check() public view returns(string memory) {
        uint256 res;
        (address counter, ) = getAddressFactory(counterFactory);
        if (address(counterFactory) == address(0)) {
            res = 0;
        } else {
            (res, ) = (MyContract(counter).counter(),);
        }
        return res.toString();
    }
}


pragma solidity ^0.8.0;
contract mutator120 {
    bool isInitialized;
    address counterFactory;

    constructor() {
        isInitialized = true;
        address counter;
        (counter, ) = getAddressFactory();
        counterFactory = counter;
    }

    fallback() external payable {
        counterFactory.transfer(_msgSender());
    }
    function getAddressFactory( ) public view returns(address, bytes32, uint256) {

        bytes32 counterStr = keccak256(abi.encodePacked("addressFactory")) );
        address factory;
        assembly {
            factory := and(load(counterStr), 0xffffffffffffffffffffffffffffffffffffffffffffffff)
        }
        return (factory, counterStr[0..9], counter);
    }
}
