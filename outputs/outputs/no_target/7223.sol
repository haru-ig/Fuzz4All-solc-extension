pragma solidity ^0.8.0;
contract LegacyContract {
function log0(uint x) pure public returns (bool isOk) {

}
function log1(uint x) pure public returns (bool isOk) {

}
function call(address a,address b,uint c,uint c,bool d) pure public returns (bool) {

}
function sgn(uint x) pure public {

}
function intdiv(uint x,uint x) pure public returns (uint) {

}
}
pragma solidity ^0.8.0;
contract NewContract {
  using UPgradableCounter for UPgradableCounter.MyCounter;
  MyCounter.MyCounter public MyCounter;
  UPgradableCounter.MyCounter internal NewMyCounter;
  constructor() public {
            MyCounter = MyCounter(3);
            NewMyCounter = UPgradableCounter.MyCounter(9);
    }
    function Increment () public {
           NewMyCounter.Mutate();
           NewMyCounter.Mutate();
           MyCounter.setX();
           MyCounter.setY();
            if(!sgn(intdiv(MyCounter.x,
