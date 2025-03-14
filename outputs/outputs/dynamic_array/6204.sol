pragma solidity ^0.8.0;
import "./Interfaces.sol";
import "./Test.sol";
import './Test2.sol';
interface ProxyFactory
{
  function createProxy(address target) external;
}


contract ProxyFactoryImpl
{
  function createProxy(address target) public
  {
      Test2 c = Test2(target);
      ProxyFactory c2 = ProxyFactory(target);
    ProxyFactory(target).createProxy(address(c));

  }

}
