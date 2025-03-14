pragma solidity ^0.8.0;
library IntWrapper {
    int constant X = -1;
    function x() pure public returns (int) {
        int Y = X;
        Y = -Y;
    }
}

pragma solidity ^0.8.0;
library StringWrapper {

    address constant BEEFED1B = 0xe44d531067b7856d42cf2884dc3a1966ec1c04ce;

    string constant STR1 = 'Hello 'a'b'c';
    string constant STR2 = '123 + 123 =';
    string constant STR3 = '0x' + '44';
    string constant STR4 = '0xbbbbbb' + b'xx';
    string constant STR5 = '0xffff';
    string constant STR6 = '0xABC';
    string constant STR7 = '0.01';
    string constant STR8 ='string(address)';
    string constant STR9 = '0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee';
    function x() pure public returns (bool) {
        if (STR8.len() == 2) {
            bool X = true;
        } else {
            bool X = (STR7).len() > STR9.len();
        }
        (bool A, bool B) = (true, false);



        return true;
    }
}
