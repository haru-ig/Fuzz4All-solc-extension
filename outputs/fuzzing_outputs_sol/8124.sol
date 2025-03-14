pragma solidity ^0.8.0;
contract SemanticEquivalentK8_
{
  function f() payable
  {
  }
  function g() pure
  {
  }
}

contract SemanticEquivalentK2_
{
    bytes32 private nonReentrantLookupTable = 0x2A0357CF17C70D32446A9E89888E5108A0148391A21AA65B2892F8DC30FAEDFE;
}

contract SemanticEquivalentK4_
{
    bool internal paused;
}

contract SemanticEquivalentCaller_
{
    SemanticEquivalentK7_ public self;
    SemanticEquivalentK8_ public self2;
    SemanticEquivalentK2_ public self3;
    SemanticEquivalentK4_ public self4;

    constructor(SemanticEquivalentK7_ self_init, SemanticEquivalentK8_ self2_init, SemanticEquivalentK2_ self3_init, SemanticEquivalentK4_ self4_init) public
    {
        self = self_init;
        self2 = self2_init;
        self3 = self3_init;
        self4 = self4_init;
    }

    function accept(SemanticEquivalentK7_ self_init, SemanticEquivalentK8_ self2_init, SemanticEquivalentK2_ self3_init, SemanticEquivalentK4_ self4_init) public
    {
        self = self_init;
        self2 = self2_init;
        self3 = self3_init;
        self4 = self4_init;
    }

    fallback() external payable
    {
    }
    receive() external payable
    {
        self.f();
    }

    fallback() external
    {
        self.g();
    }
    receive() external
    {
        self.g2();
    }

    fallback() public
    {
        self.f();
    }
    receive() public
    {
        self.g();
    }

    fallback() public payable
    {
        self.f();
    }
    receive() public payable
    {
        self.g();
    }
}
address ContractCaller = address(new SemanticEquivalentCaller_(SemanticEquivalentK7_{"fallback () public { assembly { mstore(returndatacopy(0,0),0x60,0xa65de0b6339cb5f139f3f637334dc3494c464b568768040d5f3b60a008234631160260556171460950756155604ed9555b91400a1390641718565b600080fd5b348015607e57600080fd5b5061014f6
