pragma solidity ^0.8.0;
contract InlineAssembly6{
    function test() public pure returns(bool) {
        bool a ;
        assembly {
            a := 1000000000
        }
        return a;
    }
}
contract InlineAsm6Caller{
    function test() public returns(bool) {
        uint256 a ;

        bool b ;
        assembly {
            b := calldatacopy($0, 0, returndatasize())
        }
        return a > 0;
    }
}
