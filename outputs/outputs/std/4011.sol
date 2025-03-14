pragma solidity ^0.8.0;
 contract Modifiers {
    modifier isPrime(uint n) {
        if ( n % 2 == 0 && n > 1) return;
        uint sqrt = sqrt( uint(n));
        for ( uint i = 2u; i <= sqrt; i++) if ( n % i == 0 ) return;
        _;
    }
    modifier primeCheck(uint n) {
        if ( n % 2 == 0) return;
        uint sqrt = sqrt( uint(n));
        for ( uint i = 2u; i <= sqrt; i++) if ( n % i == 0 ) return;
        return true;
    }
    function isPrime(uint n) public view isPrime(n) { }
    function primeCheck(uint n) public view primeCheck(n) { }
    function setVal(uint val) public { }
    function setNext(uint elem, uint next) public { }
}
