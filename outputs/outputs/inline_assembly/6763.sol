pragma solidity ^0.8.0;
contract MixedContactsExample508 {
    Event log1_1;
    event log2;
    event log1_2;
    event log1_3;
    event log4;
    uint64 amount1;
    uint64 amount2;
    address from_user;
    uint8 test0;
    uint8 test1;
    uint8 test2;
    uint8 test3;
    uint8 test4;
    function anotherOperation5() public {

        amount1 = 2;
        test0 += 1;

        amount2 -= 1;
        log1_3.fire(amount1);

        from_user = address(0x64);

        test1 -= 1;
        log1_1.fire(amount1);

        amount1 -= 1;
        log2.fire(amount1);
        log1_2.fire(amount1);

        amount1 = 3;
        log1_1.fire(amount1);

        amount1 -= 1;
        log3.fire(amount1);
        log4.emit();
        log1_3.fire(amount1);
        log1_2.fire(amount1);
        amount1 = 4;
        if(amount1 < 1) revert();
        log1_2.fire(amount
