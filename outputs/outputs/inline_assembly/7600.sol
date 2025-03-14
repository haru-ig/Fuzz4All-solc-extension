pragma solidity ^0.8.0;
contract L1 {
   uint constant initialx = 0;
   uint constant INITIALY = 0xCAfebABE45678900;

   uint constant initialFunctionCall = 0;

   function f() public view returns (uint) {
       uint call1 = 7867;
       uint call2 = 15131383128555;
       uint call3 = 15131383128555;
       uint call4 = initialx + call2 - initialFunctionCall;
       uint call5 = INITIALY + f() + call2 - 0x0123;
       uint call6 = INITIALY + callFunctionCall() + 0xEF123456789ACDE2;
       uint call7 = INITIALY + callFunctionCall() + initialFunctionCall - 0x01234ADECAFDEAD;
       return call3 + f() + callFunctionCall() + call5 + call1 + callFunctionCall() + call2 + call7;
   }

   function callFunctionCall() public pure returns(uint) {
       return 0;
   }
}
pragma solidity >=0.8.0;
contract L1 {
    uint constant initialx = 0;
    uint constant INITIALY = 0xCAfebABE45678900;

    uint constant initialFunctionCall = 0;

    function f() public pure returns (uint) {
        uint call1 = 7867;
        uint call2 = 15131383128555;
        uint call3 = 1513
