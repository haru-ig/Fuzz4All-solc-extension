pragma solidity ^0.8.0;
library MyLibrary {

}
contract SomeContract {
  using MyLibrary for uint;
  uint public i;
  function init(uint someVar) public {
    i = someVar;
  }

}

contract MyContract3 {

  void callSomeMethod() public {
    SomeContract sc;
    sc.init(uint(MyLibrary.getSomeConst()));
  }
}
```
{{</ tab >}}
{{< tab tabNum="2" >}}
The `emit MyEvent(uint indexed a)` is not a keyword in Solidity. Instead, it is called an event (event in Solidity). In this case, it is emitting an event to the contract at the 0x00 address. An event is a way to pass metadata data when invoking callbacks attached to a contract. In this case, the contract should retrieve the value stored in `someVar`. Note that `emit` is used when emitting events in the contract, but it should be combined with the `emit(params arg1,...)` and `emit(arg1)` keywords in Solidity to emit an event using multiple arguments.

An event is similar to a callback, in that it does not have an associated logic, it is the contract that handles the logic, which must be triggered by external events. When a callback is attached in the contract, the contract is the source of truth for external events triggered by the contract.
{{</ tab >}}
{{< tab tabNum="3" >}}
An event is an event with some specific behavior. An example is an `OwnerChanged` event.

The first thing you might want to be mindful of is that the contract can trigger an event at a future time. That would require the contract to keep track of which event occurred in the last block and whether that event has been processed yet.

In general, emitting one or more events to the contract works much like a callback. The key difference is that emitting events is more deterministic and less complicated and it is not possible to trigger multiple events at the same time.
{{</ tab >}}
{{< /tabs >}}
