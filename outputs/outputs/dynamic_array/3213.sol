pragma solidity ^0.8.0;
contract Mod {
    address[] public addresses;
    uint[99][99] memory items;
    uint[99][99] memory memItems;
    uint[99][99] getItems;
    bytes calldata data;

    function _addItem() public payable {
        require(msg.value > 0, "must pay value greater than 0");
        addresses.push(msg.sender);
        memItems[msg.sender][addresses.length-1] = messagesAndValuesForSender(msg.value, "ADD");
    }

    function getAddr() public view returns(address[]) {
        return addresses;
    }

    function getData() public view returns (bytes memory) {
        return data;
    }

    function sendMessage(uint value) public payable {
        require(msg.value == value, "Wrong value provided");
    }

    function deleteAddress(address addr) public {
        require(addresses.length > 1, "No addresses to delete");
        delete addresses[addr];
        memItems[addr][addresses.length - 1] = 0;
    }

    function addAndDeleteAddress(address[] memory newAddresses) public {
        for(uint i = 0; i < newAddresses.length; i++) {
            _addItem();
            deleteAddress(newAddresses[i]);
        }
        if(addresses.length > 0) {
            memItems[addresses[0]][addresses.length-1] = messagesAndValuesForSender(0, "MOD");
        }
    }

    function getItemsContractOwner() public view returns (uint[99][99]) {
        return items;
    }

    function getItemsMemoryOwner() public view returns (uint[99][99]) {
        return memItems;
    }

    function getItemsReturnOwner() public view returns (uint[99][99]) {
        return getItems;
    }

    function getMessagesAndValuesFromContract(address sender) public view returns(uint[99][99] memory) {
        return getItems;
    }

    function messagesAndValuesForSender(uint amt, string memory message) private pure returns(uint[99][99] memory) {
        uint[99][99][9999] storage item = items[0][0];
        item[1] = message;
        item[0][0] += amt;
        return item;
    }
}
