pragma solidity ^0.8.0;
interface I1a{
    event UseEvent(uint value);
    function test() external payable;
    function use() external payable;
    function change(uint _value) payable external;
}

pragma solidity ^0.8.0;
contract A {
address payable instance1;
address payable instance2;
}
contract B is A{

function change (uint _value) public payable {
  instance2.transfer(_value);
  UseEvent(_value);
}
}
contract C is B{
B b;

function change (uint _value) public override payable {
  b.change(_value);
  UseEvent(_value);
}
}
contract D is A{

function change (uint _value) public override {
  change2(_value);
  UseEvent(_value);
}

function change2 (uint _value2) public payable {
  b.change2(address(this));
  UseEvent(_value2);
}
}
contract E is A, D{
function run() public {
  b.use.value(address(this).balance)();
}

function run2() public {
  b.use();
}
}
