pragma solidity ^0.8.0;
contract Mod {
    function fallback() public pure {
        Storage storage _storage = Storage();
        _storage.call();
        call.value(1 ether)();
    }
}
