pragma solidity ^0.8.0;
contract Add {
    uint8 public a;
    function plus_equal_minus(uint8 a) public {
        a=a+0;
        a^=1;
        a^=2;
        a^=a;
        a^=-(a^(-a)-1);



    }
    function plus_less_equal_minus_not_equal(uint8 a) public {
        a=a-1;
        a^=1;
        a^=2;
        a^=a;
        a^=-(a^(-a)-1);



    }
    function plus_equal_minus_not_equal(uint8 a) public {
        a=a-1;
        a^=1;
        a^=2;
        a^=a;
        a^=-(a^(-a)-1);



    }
}
