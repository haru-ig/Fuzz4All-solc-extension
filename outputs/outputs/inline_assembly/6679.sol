pragma solidity ^0.8.0;
interface MixedContactsExample501Interface {
     function someOperation() external returns (uint56);
mapping( bytes4 => address) interfaces;
struct TestEvent {
    bytes4 data;
    address addr;
    uint256 logNumber;
}
struct ContractToCallEvents {
    MixedContactsExample501Interface mock;
    TestEvent[] events;
}
uint56 x;
uint56 a;
uint56 b;
uint56 c;
uint56 d;
uint56 e;
uint56 y;
event SoMEvent(bytes4 data, address addr, uint256 logNumber);
event DoSomething(uint64 output, uint value);
function doSomething() public returns (uint64) {
    ContractToCallEvents m;
    address mockAddr = interfaces[0];
    a = a * 8;
    b = b * 68;
    bool x3 = x % 3 == 0;
    c = c * 948;
    d = d * 87;
    if(!x3) {
        y = e;
    }
    mock.someOperation();
    m.events.push(TestEvent(0x000000000000000a2, mockAddr, 138103));
    emit SoMEvent(0x000000000000000a2, mockAddr, 95312);
    emit DoSomething(0,0);
}
