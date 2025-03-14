pragma solidity ^0.8.0;
contract SimpleExample15{
    uint num;
    function doSomething() public returns (bool) {

        num /=2;
        num *=2;
        num %= 2;
        num +=2;
        num -= 2;
        num <<= 4;
        num >>= 4;
        num += 0x20;
        return true;
    }
}




pragma solidity ^0.8.0;
contract SimpleExample14 {
    function doSomething(uint256 a, uint256 b, uint256 divnum) public returns (bool) {


        if (divnum > a ) {

            return false;
        }

        uint256 adivb = a / b;
        uint256 adivb2 = adivb / divnum;
        uint256 adivb3 = adivb2 / divnum;


        if ( adivb2 > 0 ) {

            return false;
        }

        if ( adivb3 < divnum ) {
            return false;
        }

        if ( a == b) {
            return false;
        }

        return true;
    }
}

pragma solidity ^0.8.0;
contract Examples13 {
    enum Fruit { APPLE, ORANGE, KLEE };
    function doSomething() public returns(Fruit) {
        return Fruit(uint(fruit(5/4)));

    }
}


contract ComplexExample9 {


    uint256 constant ONE_EIGHT_DIGITS=16;


    uint constant ONE_
