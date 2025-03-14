pragma solidity ^0.8.0;
contract compatible {
    uint y = 1;
    constructor(uint8 a) public {
        y = a;
        y = a + 1;
    }
    uint8 y;
}
contract compatible_abi4 {

    uint8 public y = 3;
    constructor(uint8 a) public {
        y = 1;
        y = a;
        y = a + 1;
    }
    uint y;
}
contract simple_contract {
    uint public public_variable;
    uint public public_variable2;
    uint public public_variable3;

    constructor(uint a, uint b) public {
        public_variable = a;
        public_variable2 = b;

        public_variable3 = 1;
    }

    function public_function1() public {
        public_variable = public_variable2 + pubic_variable + public_variable;
    }
}
pragma solidity ^0.8.0;
contract simplified_abi5 {
    enum E {
        A = 1,
        B,
        C,
        D,
        E
    }
    constructor() public {

    }
    function print_uint(uint x) public view returns(uint s) {
        s = x;
    }
    function print_i8(int8 x) public view returns(int8 s) {
        s = x;
    }
    function print_i8_fixedx(int8 x) public view returns(int8 s) {
        x = x.fixx();
        s = x;
    }

    function print_u8(uint8 x) public view returns(uint8 s) {
        s = x;
    }

    function print_u8_fixedx(uint8 x) public view returns(uint8 s) {
        x = x.fixx();
        s = x;
    }

    function print_x(uint8 x) public {
        s = x;
    }

    function print_i128(int128 x) public view returns(int128 y) {
        y = x;
        print_u64(uint64(y));
    }

    function print_u64(uint64 x) public view returns(uint64 y) {
        y = uint64(x);
    }
}
