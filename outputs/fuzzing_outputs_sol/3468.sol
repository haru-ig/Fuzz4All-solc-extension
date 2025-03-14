pragma solidity ^0.8.0;
contract Storage {
    uint x1;
    function updateStorage() public pure {
        x1 = 100;
    }
    function call() public pure {
        x1 = 0;
        call();
    }
}
contract Caller {
    Storage public storage = Storage();

    function callIf(uint x) public view returns(bool) {
        if (x < 0)
            return false;
        else {
            storage.updateStorage();
            storage.call();
        }
        return true;
    }
    function pureCallIf(uint x) public pure returns(bool) {
        if (x < 0)
            return false;
        else {
            storage.updateStorage();
            storage.call();
        }
        return true;
    }
}
