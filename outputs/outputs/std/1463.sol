pragma solidity ^0.8.0;
contract MyMutates {
    function _test() public {
        Mutate[] memory myMutates = new Mutate[](2);
    }
}

pragma solidity ^0.8.0;
contract Modifiers {
    string name;
    mapping(address => bool) public accounts;
    function setAccountName(string calldata name_) public returns (bool) {
    }
    function accountExists(address account_) public view returns (bool) {
    }
    function addAccount(address account_) public {
    }
    function removeAccount(address account_) public {
    }
}
