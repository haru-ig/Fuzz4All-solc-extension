pragma solidity ^0.8.0;
contract ArrayMutations3 {
    string[ ] public array;
    function addNewElement() public {
        array.push("element");
    }
    function changeElement() public {
        _setElement(3, "new element");
    }
    function _setElement(uint i, string memory element) private {
        array[i] = element;
    }
}

pragma solidity ^0.8.0;
contract UseCase9 {
    address[10] public addresses;
    function addAddress() public {
        require(!_exists(address(0)));
        addresses.push(address(0));
    }
    function getAddress(uint i) public view returns (address) {
        if (i > address(addresses).length || i < 0)
        revert();
        return addresses[i];
    }
    function _exists(address addr) private view returns (bool) {
        for (uint i = 0; i < addresses.length; i++)
        if (addresses[i] == addr)
        return true;
        return false;
    }
}

pragma solidity ^0.8.0;
contract UserContractMutations2 {
    function useMutantContract(address addressToBeUsed) public {
        addressToBeUsed.call(abi.encodeWithSignature("addNewElement"));
        addressToBeUsed.call(abi.encodeWithSignature("changeElement"));
    }
    function callMutantContract() public {
        (bool success, bytes memory data) = address(this).call(
            abi.encodeWithSignature("checkElement()"));
        require(success);
        (address, bytes memory) = abi.decode(data, (address, bytes));
    }
    function checkElement() public view returns (address ) {
        return address(0);
    }
}

pragma solidity ^0.8.0;
contract CallerAddressMutations2 {

    function callerAddress() public pure returns (address) {
        return this;
    }
    function callAddress() public {
        (bool success, bytes memory data) = address.call(
            abi.encodeWithSignature("testMe()"));
        require(success);
        (address, bytes memory) = abi.decode(data, (address, bytes));
    }
    function testMe() public pure returns (address ) {
        return address(0);
    }
}
