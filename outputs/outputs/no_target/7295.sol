pragma solidity ^0.8.0;
contract Abstract {
    function _decode1(address x) public pure virtual returns (bytes memory, bytes memory) {}
    function doSomething() public virtual {
        bytes memory y = _decode(_decode1(address(1)));
        assembly { return }
    }
}
