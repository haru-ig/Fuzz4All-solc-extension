pragma solidity ^0.8.0;
contract MutatedSemanticsEquivalenty5 {
    mapping (address=>uint) x;
    mapping (string=>uint) y;
    mapping (address=>uint) x1;
    mapping (string=>uint) y1;
    address payable a;
    address payable b;
    address payable c;
    address payable d;
    address payable e;
    address payable f;

    constructor (){
        a=msg.sender;
        x.set(msg.sender, 38);
        x1.set("34", 6789);
        x.set("56", 23);
        y.set("54", 987);
        y1.set("2", 214);
        a.transfer(5000);
        b=msg.sender;
        b.transfer(200000);
        c=msg.sender;
        a.transfer(700000);
        d=msg.sender;
        a.transfer(222222);
        e=msg.sender;
        a.call{value: 5}("");
        f=msg.sender;
        a.transfer(7);
    }

    fallback() external payable {
        if (msg.sender == a) {
            x.set(a, 0);
            x.set(1, 1);
            y.set("0", 0);
            x.set("3", 3);
            x.set("1", 2);
            y1.set("", "2");
        } else {
            x.set(3, 1);
        }
        if (msg.sender == b) {
            a.transfer(10);
            x.set(0, 5);
            x1.set(0, 7);
            x1.set("", 0);
        } else {
            x1.set(10, 0);
        }
        if (msg.sender == c) {
            x.set(3, 3);
            x1.set(5, 4);
            x1.set("2", 4);
            if (msg.sender == a) {
                x.set(0, 4);
            }
        } else {
            x1.set(34, 0);
        }
        if (msg.sender == d) {
            x1.set("", "17");
        }
    }
    event NewContract(address sender);
