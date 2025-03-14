pragma solidity ^0.8.0;
contract Semantic0023 {
    function equal() public pure {
        uint256 a = 1;
        while(a == 1) {
            a = 0;
            a = 1;
        }
    }
}

pragma solidity ^0.8.0;
contract Semantic0023 {
    uint x1;
    uint x2;
    function equal() public pure {
        (x1, x2) = (1, 0);
        while(x1 == 1) {
            x2 = 0;
            (x1, x2) = (1, 0);
        }
    }
}


pragma solidity ^0.8.0;
contract Semantic0023Test {
    function test001() public pure { Semantic0023.equal(); }
    function test002() public pure { Semantic0023Test.equal(); }
    function test003() public pure { Semantic0023Test.equal(); }
    function test004() public pure { Semantic0023Test.equal(); }
}
