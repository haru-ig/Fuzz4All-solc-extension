pragma solidity ^0.8.0;
contract Test74 {
        uint[] memory z;
        uint[] memory x;
        uint[] memory b;
        address[2] public a;
        uint[32] public b_;
        uint constant x_ = 3;
        uint constant x_2 = 6;
        uint constant x_3 = 0x5;
        uint constant x_len = 3;
        uint constant x_len_12 = 12;
        function foo(uint[] memory __arr) public {
                x = __arr;
        }
}
contract Test75 {
        address[] memory a;
        address[] memory b;
        uint[] memory b3;
        uint[] memory b3a;
        uint _foo() constant public returns (uint) {
                return foo();
        }
        function foo() constant public {
                assert(a.length == 0);
                assert(b3.length == 3);
                b3a[0] = 0;
                b[0] = 0xBD375553A7341e6Ccd89C06599470085e143B73A;
                a[0] = 0x28715B24453e7999C4923874C7E7169159f207F1;
                a[1] = 0x9dF5BE0484FF0E6354B3F16A5c1c55a6586a8639;
        }
        function () public {
                a.length;
                b3.length;
                a[0];
                a[1];
                b[0];
        }
}
contract Test76 {
        function bogus(address[] memory x) public {
                x.length;
        }
}
