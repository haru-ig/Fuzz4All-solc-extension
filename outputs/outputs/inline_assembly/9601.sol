pragma solidity ^0.8.0;
contract YulContract {
   uint contractCounter = 1;
   uint internal divisor;
   function subContract() internal returns () {
       contractCounter = contractCounter / 10;
       divisor = contractCounter;
       return;
       contractCounter /= 10;
   }
}

    let divisor = contractCounter / 10;
                                              ^~~
yul-0.6.3.sol:3:58: note: variable 'divisor' assigned at most once, use variable declaration instead
    function subContract() internal returns () {
                                           ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
yul-0.6.3.sol:5:53: note: variable'signal' assigned at most once, use variable declaration instead
    function subContract( ) internal returns ( uint ) {
                                                   ~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
yul-0.6.3.sol:5:53: note: operator "/" is applied to unsigned values
yul-0.6.3.sol:3:57: note: modifier "public" overrides parent modifiers
yul-0.6.3.sol:5:22: note: CompilerError: Invalid operands to "contractCounter /= 10;"
    function subContract() internal returns ( uint ) {
                       ^~~~~~~
yul-0.6.3.sol:9:29: note: CompilerError: Function call must be used with valid return type
