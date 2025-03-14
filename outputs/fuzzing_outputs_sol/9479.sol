pragma solidity ^0.8.0;
contract ContractWithFallback13 {
  receive () public pure {
  }
}






pragma solidity ^0.8.0;
contract ContractWithFallback {
  function add()public payable {
    uint a;
    bool b;
    bytes32 x;
    address y;
    uint txid;
    address from;
    abi.decode(abi.encodePacked(0x00,0), (a,b,x,y,txid,from));
    (b, txid);
    from;
    ContractWithFallback(0);

  }
}


pragma solidity ^0.8.0;
contract ContractWithFallback0 {
  address internal addressToCall = 0x0802A19169e90e805B4F071E0045394c30E03b0F;

  function onFallback() external payable{
    bytes4 sig = bytes4(keccak256("onFallback()"));
    addressToCall.call.value(0){sig}();
  }
}
