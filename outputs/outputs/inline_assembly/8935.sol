pragma solidity ^0.8.0;
contract EquivalentContract
{
    uint256 x;
    function set() public
    {
        x = 0x100000000000000000000000000000000;
    }
    function test() public
    {
        uint256 z = x;
        z /= x;
        z /= x / x;
        z /= ( (x + x) % (x + x) % (x + x) ) / ( (x + x) % (x + x) );
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}

contract EquivalenceTester
{
  constructor () public
  {
    EquivalentContract ec = new EquivalentContract();
    ec.set();
    ec.test();
    uint256 expectedValue = 2**uint256(2407845249718282844000);
    uint256 actualValue = uint256(ec.get());
    if (actualValue!= expectedValue) {
      assert(false);
    }
    EquivalentAssembly ea = new EquivalentAssembly();
    ea.set();
    ea.test();
    uint256 expectedValue2 = 2**uint256(226819965369034404577);
    uint256 actualValue2 = uint256(ea.get());
    if (actualValue2!= expectedValue2) {
      assert(false);
    }
  }
}
