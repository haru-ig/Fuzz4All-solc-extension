pragma solidity ^0.8.0;
contract C9 {
    uint constant x = 1;
}
contract C10 {}
contract C11 is C9, C10 {}
contract C12 {}
contract C13 is C8, C12 {}
contract C14 {
    function use( )
    {
        C13( ).use();
        C10( ).use();
        C9( ).use();
        C8( ).use();
        C12( ).use();
        C11( ).use();
    }
}
contract C15 {
    function dontUse( )
    {
        C13( ).dontUse( );
        C10( ).dontUse( );
        C9( ).dontUse( );
        C8( ).dontUse( );
        C12( ).dontUse( );
        C11( ).dontUse( );
    }
}
contract C16 {
    uint public constant x = 1;
}
contract C17 {}
contract C18 is C17 {}
contract C19 {
    uint constant x = 1;
}
contract C20 is C9, C10, C23 {}
contract C21 is C16, C19 {}
contract C22 {
    function use( )
    {
        C16( ).use( );
        C20( ).use( );
    }
}
contract C23 {}
contract C24 {
    uint public constant x = 1;
    uint constant y = 1;
    uint constant sum = x + y;
    uint constant subtract = x - y;
    uint constant multiplyByInteger = x * 10 + 9 / 5 % 2;
    uint constant multiplyByIntegerZero = x * 0 + 0 * 10 / 5 % 2;
    uint constant multiplyByIntegerMax = x * type(uint256).max + 10 * 10507 / 5 % 2;
    uint constant add = x + 1;
    uint constant subtractBy1 = x - 1;
    uint constant subtractByZero = x - 0;
    uint constant divideByInteger = x / 18 % 10 + 3 * 10507 % 19 / 5 % 10 + 2 * 1050 * 5 % 11 + 3;
    uint constant divideByIntegerNegative = x / -9 % 5 / 9 - 3;
    uint constant divideByIntegerMax = x / uint256.max % 11 / 2 + x / uint256(10507).max % 10 / 5 % type(uint256).max + 30505 % 5 + 5;
    uint constant divideByZero = x / 0;
    bool constant lesserThanZero = x < 0;
