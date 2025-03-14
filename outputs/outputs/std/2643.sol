pragma solidity ^0.8.0;
contract Mutate {
  function mutationfunc() public {
    address r = address(0x6138286237ADe9b86f0d60e009C39505b8e7B449);
    r = r ^ address(0x62116f533b70086804a333e54e9e819f7672773a);
    r = r.contract().function(r);
    r = r.contract().contract().contract().function.call(r);
  }
}
