pragma solidity ^0.8.0;
contract Semantic0031 {
    function same() public pure {
        address x;
        x = 0x1010;
        x = x;
    }
}

pragma solidity ^0.8.0;
contract Semantic0032 {
    function same() public pure {
        function foo() public pure {}
        function foo() public pure {}
        function foo() public pure {}
    }
}
