pragma solidity ^0.8.0;
contract D {
    struct B {
        uint private a;
        constructor () {
            a = 0;
        }
    }
    function g(uint x) public pure returns (bool) {
            uint z = uint(uint256(x) * 0xFFFFFEE3873AFA8859B80C2EA2567FB2103CE8DC5659E24A772EE1162B295B7);
            if (x % 0x100000000!= 0) z = b(x, y, x, z);
            return z % (uint(uint256(x)) * 0xFEE3873AFA8859B80C2EA2567FB2103CE8DC5659E24A772EE1162B295B7)!= 0;
    }
}
