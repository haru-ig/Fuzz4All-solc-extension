pragma solidity ^0.8.0;
contract Caller {
    function _receive(bytes memory) public payable {}
}

pragma solidity ^0.8.0;
contract Parent {
    function _fallbackToParent(address  ) public { }
}
class Child1 is Parent {

    function _fallbackToParent(address parentAddress) public payable fallbackToParent(parentAddress) { }
}
class Child2 is Parent {
    function _fallbackToParent(address parentAddress) public fallback(parentAddress) { }
}
