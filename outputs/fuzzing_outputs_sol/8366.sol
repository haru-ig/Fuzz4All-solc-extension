pragma solidity ^0.8.0;

import "./SemanticSimilar366.sol";
import "./SemanticSimilar367.sol";
import "./SemanticSimilar368.sol";

pragma solidity ^0.8.0;

class Example {
  function f() public {
    SemanticSimilar366 contractInstance = new SemanticSimilar366();


    assert(contractInstance.a == 0);



    contractInstance.a = 1;
    assert(contractInstance.a == 1);

    SemanticSimilar367 contractInstance2 = new SemanticSimilar367();
    assert(contractInstance2.a == 0);

    SemanticSimilar368 contractInstance3 = new SemanticSimilar368();
    assert(contractInstance3.a == 0);

    SemanticSimilar375 contractInstance4 = new SemanticSimilar369();
    contractInstance4.b(uint(0), uint(0), uint(0) );

  }

}
