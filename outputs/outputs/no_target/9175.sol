pragma solidity ^0.8.0;
contract smarter_abi5 {
    constructor(uint8 a, uint8 b) public {
        public_variable = 0;
        public_value -= a;
        public_value += a;
        public_value += b;
        public_value -= b;
        public.public_variable = 0;
        public.public_variable += a;
        public.public_value = 0;
        public.public_value -= a;
        public.public_value += a;
        public.public_value += b;
        public.public_value -= b;
    }
    uint8 public public_variable;
    uint8 public public_value;
    smarter_abi4 public public;
}
