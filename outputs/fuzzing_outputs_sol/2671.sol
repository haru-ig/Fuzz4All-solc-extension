pragma solidity ^0.8.0;
contract MutatedCase1 {
    function mutate(address account) public {
        require(account == msg.sender);
        msg.origin;
    }
}
contract MutatedCase2 {
    function mutate(address account) public nonpayable {
        require(account == msg.sender);
        msg.origin;
    }
}
contract MutatedCase3 {
    fallback function fallback() public payable {

    }
    function mutate(address account) public {
        require(account == msg.sender);
    }
}
contract MutatedCase4 {
    fallback function fallback() public {
        msg.origin;
    }
    function mutate(address account) public payable {
        require(account == msg.sender);
    }
}
pragma solidity ^0.8.0;
contract Caller is MutatedCase1, MutatedCase2, MutatedCase3, MutatedCase4 {
}
