pragma solidity ^0.8.0;
contract Constant {
   uint8 constant ONE = 1;
}
contract Constant {
   uint8 constant ONE = 1;
}
contract NonConstant {
   uint40 nonConstant;
}
contract Constant {
   uint8 variable;
}
contract NoReturn {
   uint8 NORETURN;
   fallback (){
    NORETURN = 1;
    assert(NORETURN == 1);
   }
}
contract NoReturn {
   uint8 NORETURN;
   receive(){
    NORETURN = 1;
    assert(NORETURN == 1);
   }
}
