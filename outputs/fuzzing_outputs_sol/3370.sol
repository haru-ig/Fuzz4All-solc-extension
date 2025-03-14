pragma solidity ^0.8.0;
interface Contract {
    function payable() external payable;
}
contract S {
    Contract c;
    fallback () {
        emit Fallback(msg.value);
    }
}

pragma solidity ^0.8.0;
contract S {

    function callBack() public payable {
        callTo(address(c));
    }
    function callTo(address to) public payable {
        revert("test");
    }
}
