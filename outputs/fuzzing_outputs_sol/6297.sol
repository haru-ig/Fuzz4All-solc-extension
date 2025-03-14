pragma solidity ^0.8.0;
contract MutatedSubversion {
    function unchangedFunction() public payable { }
    function changedFunction() public payable {
        revert();
    }
}

pragma solidity ^0.8.0;
contract Equivalent {
    function unchangedMethod() public pure { }
    function changedMethod() public pure {
        revert();
    }
}
contract Subversion {
    function unchangedMethod() public pure { }
    function changedMethod() public pure {
        revert();
    }
}
contract Subversion2 {
    function unchangedMethod() public pure { }
    fallback() public {
        revert();
    }
}
