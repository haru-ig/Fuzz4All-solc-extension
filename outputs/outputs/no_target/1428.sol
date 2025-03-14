pragma solidity ^0.8.0;
contract Semantic0029_0 {
    function mutant() public pure returns (string memory m) {
        m = "abc";
        emit logEvent28(m);
    }

    function logEvent28(string memory message) public pure {
        if (true) {
            m = message
        }
        else {
            m = "def";
        }
        log1("msg28", "msg28", m);
    }
}
