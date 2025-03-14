pragma solidity ^0.8.0;
contract L8Inline {
    uint[9] x;
    function badSneaky() public view returns(uint) {
        return x[4];
    }
    function bad(uint[9] memory a1) public view returns(uint) {
        a1[9] memory a2; a2[0] = 1;a2[11] = 2;
        if (a2[12]!= 1)
            return a2[11];
        else {

            x = a1;
            function f() public view {
                x[14] = 4;
            }
            f();
            return x[14];
        }
    }
}
