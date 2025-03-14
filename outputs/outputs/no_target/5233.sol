pragma solidity ^0.8.0;
contract SimpleExample20 {
    function test() public pure {
        uint0 test;
        test = ~test;
        test = ~ test;
        test = ~ ( test = ~ test );
    }
}
