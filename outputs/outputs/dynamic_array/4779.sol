pragma solidity ^0.8.0;
contract Test2 {
    uint256[] a;
    bool[] b;
    mapping (address => bool) c;
    event TestEvent (uint indexed i);
    function MutateData() public {
        a.push(2);
        if (c[msg.sender]) b.push(2);
        c[msg.sender] = true;
        a[10] = 3;
        a[100] = 30;
        a[3] = 4;
        a.push(5);
        a.push(50);
        a.push(500);
        a.push(40);
        a.push(400);
        a.push(4020);
        a.push(40200);
        b.push(true);
        b.push(true);
        b.push(false);
        b.push(false);
        c["0x00000000000000000000000000000000000000000"] = false;
        if (c["0x000000000000000000000000000000000000000"]) {
            c["0x000000000000000000000000000000000000000"] = false;
            a.push(1);
            a.push(100);
            a.push(999);
            a.push(920);
            a.push(99);
            a.push(9999);
        }
        TestEvent(10);
        TestEvent(20);
        TestContract.TestEventEvent1(30);
        TestContract.TestEventEvent2(40);
    }
}
