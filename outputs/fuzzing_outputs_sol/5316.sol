pragma solidity ^0.8.0;
interface Fallback6
{
        function f(uint256 x);
        function g(uint256 x);
        function h(uint256 x);
        function i(uint256 x);
        function j(uint256 x);
}
contract Fallback7
{
        function createCaller();
        function checkCaller();
        function callCaller();

        function createEmptyCaller();
        function checkEmptyCaller();
        function callEmptyCaller();
}
contract Caller
{
        fallback address public _fallback;

        constructor() {
                Fallback7(this).createCaller();
        }

        function () external payable {
                Fallback7(this).callCaller();
        }

        function checkCaller() public {
                Fallback7(address(this)).checkCaller();
        }




        modifier payable {
                _;
        }

        function createCaller() public {
                _fallback = Fallback7(address(new Fallback7()));
        }
}
