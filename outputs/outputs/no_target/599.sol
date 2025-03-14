pragma solidity ^0.8.0;
interface ADerived is ABase {

}
interface BDerived is ADerived {
    function g() virtual external pure;
}
