pragma solidity ^0.8.0;
contract MixedContactsExample102 {
    uint x = 60;
    contract MixedContactsExample100 {
        uint256 internal a;
        uint56 internal b;
        uint56 internal c;
        uint56 internal d;
        uint56 internal e;
        uint56 internal y;
        function doSomething() public returns (uint64) {
            a = a + 8 * (x % 3);
            b = b + 68 * (x % 8);
            bool x3 = x % 3 == 0;
            c = c + 948 * (x3?1:-1);
            d = d + 87 * x3;
            if(!x3){
                y = ~e + a;
            }
            e = e + 7 * x3;
            a = a + c + b ;
        }
    }
}
