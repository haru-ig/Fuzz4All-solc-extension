pragma solidity ^0.8.0;
contract UserFallback {
    address payable public constant FALLBACK_ADDRESS = payable(address(0));
    function changeFallbackAddress(address oldFallbackAddress, address newFallbackAddress) public {
        emit ChangeFallbackAddress(oldFallbackAddress, newFallbackAddress);
        FALLBACK_ADDRESS = newFallbackAddress;
    }
    emit ChangeFallbackAddress(address(0), oldFallbackAddress);
    event ChangeFallbackAddress(address oldF, address newF);
}





contract ContractWrapper {
    using Address for address;
    address public baseAddress;

    constructor(address _baseAddress) public{
        baseAddress = _baseAddress;
    }

    function setBaseAddress(address newBase) public {
        require(msg.sender == baseAddress || baseAddress.isContract(), "Only the contract creator or the contract's creator can call this");
        baseAddress = newBase;
    }


    function setAddress(address newBase) public {
        User u = User(UserFallback(newBase));
        u.changeFallbackAddress(address(0), address(0x0));
    }

    function getBaseAddress() public view returns (address) {
        return User(UserFallback(baseAddress)).getBaseAddress();
    }


    function loadMigrationsFromBytes(bytes memory newMigrations) public {
        uint8 success;
        bytes memory returnData;

        assembly {
            success := call(gas(), baseAddress, 39, newBaseAddress, 0, returnData, 0)
            if(success!= 0) {
                revert(add(returnData, 32), mload(returnData))
            }
        }

        require(success!= 0, "Loading failed.");


        revert();
    }
}
