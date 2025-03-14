pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface HelloWorldInterface {
  function send() external payable;
}
contract HelloWorldWrapper {
  HelloWorldInterface contractToCall;
  uint constant X = 1;
  constructor(in HelloWorldInterface _contractToCall) public {
    contractToCall = _contractToCall;
  }
  function helloWorld() public payable {
      contractToCall.send();
  }
}
contract HelloWorldExecutorTest {
  constructor () public {}

  function setUpBefore() public {
    HelloWorldWrapper.deploy({"gas" : 3000000}).deploy().deploy().helloWorld();
  }

  function tearDownAfter() public {
    HelloWorldWrapper.deploy({"gas" : 3000000}).destroy().destroy().destroy().helloWorld();
  }

  it_should_not_work_at_the_top_of_the_file_if_gas_was_less_than_the_constructor() public {

  }

  it_should_not_work_after_the_function_returns() public {

  }
}
