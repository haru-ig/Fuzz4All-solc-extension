pragma solidity ^0.8.0;
contract SemanticSimilar4{
  address o;
  uint256 i;
  constructor(){
  i = 2;
  }
  function getFallback(){
    o.transfer(msg.gas,77);
  }
  receive() external payable {}
}


```

* Please create a short program which uses fallback function. */
pragma solidity ^0.8.0;
contract SemanticSimilar4{
    constructor(){};
    receive()   external payable {}
    fallback() { if (msg.data.length >= 8001) { revert(usingFallback); } }
    fallback() { uint256 b: 0x00 - 1; }
}
