pragma solidity ^0.8.0;
contract Caller {

    function call(address addr, string storage storageKey) public {
        addr.transfer(address(msg.sender).balance);
        msg.sender.storeValue(storageKey);
    }






    function call_with_exception(address addr, string memory storageKey) public {
        if (addr.isNotImplementInterface()) {
            throw;
        }
        addr.storeValue(storageKey);
    }
}
