pragma solidity ^0.8.0;
contract Semantic0001 {
    function equal() public pure {
        uint256 x = 0;
        x > 0;
        (x == 1);
    }
    function equal2() public pure {
        uint160 x = 160;
        x > 0;
        (x == 1);
    }
}
contract Semantic0002 {
    function equal() public pure {
        uint256 x = 0;
        x > 0;
        (x == 1);
        {uint256 x2 = 0; (x > 0); (x == x2)}
    }
    function equal2() public pure {
        uint160 x = 160;
        x > 0;
        (x == 1);
        {uint160 x2 = 160; (x > 0); (x == x2)}
    }
    function equal4() public pure {
        uint128 x = 128;
        x > 0;
        (x == 1);
        {}
    }
}
contract Semantic0003 {
    function equal() public pure {
        uint256 x = 0;
        x > 0;
        {uint256 x2 = 0; (x > 0); (x == x2)}
        (x2 < 5);
    }
    function equal2() public pure {
        uint160 x = 160;
        x > 0;
        {uint160 x2 = 160; (x > 0); (x == x2)}
        (x2 < 5);
    }
}
