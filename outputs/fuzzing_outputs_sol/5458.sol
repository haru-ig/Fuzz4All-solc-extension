pragma solidity ^0.8.0;
contract successmutablefallback8
{
    receive() external payable {}
    receive() payable external {}
    function test() pure public returns (uint256) { return 2; }
    function test2() public pure { }
}
contract callmutatedfallback8 {
    constructor() public {}
    receive() payable external {}
    function test() pure public returns (uint256) { return 2; }
    function test4() public pure { }
    receive() payable external {}
    function test3() pure public returns (uint256) { return 2; }
    function test5() public pure { }
}
contract constructorcall8 {
    constructor() public {}
    receive() payable external {}
    function test() pure public returns (uint256) { return 2; }
    function test6() pure public returns (uint256) { return 2; }
    receive() payable external {}
    function test88() pure public returns (uint256) { return 2; }
    function testa() public pure { }
}
