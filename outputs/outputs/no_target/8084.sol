pragma solidity ^0.8.0;
contract Restricted2 {
    bool b;
    contract Foo { }
    function restricted() public {
        b = true;
    }
}
