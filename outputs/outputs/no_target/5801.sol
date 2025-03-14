pragma solidity ^0.8.0;

import "./Foo.sol";

contract Zoo {
    function testOne() public {
      address foo = Foo.contractAddress;

      address bar = Foo.fallback();


      Bar barI = Bar(bar);

      barI.setfoo(_foo);
    }
}

*/
