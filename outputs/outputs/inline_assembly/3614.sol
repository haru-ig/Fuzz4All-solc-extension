pragma solidity ^0.8.0;
contract SimilarToMutatedSquashGenerationsUsingYulWithSemantics {
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  uint public g;
  uint public r;
  constructor() {
    r = 1;
    a = address(b);
    r = g;
    a = address(c);
    r = r + 1;
    r = r;
    d = b;
  }
}


contract MutatedSquashGenerationsVsSimilarTo{
    using MutatedSquashGenerationsUsingYulWithSemantics with MutatedSquashGenerationsUsingYulWithSemantics for MutatedSquashGenerationsUsingYulWithSemantics;
    MutatedSquashGenerationsWithSemantics a;
    MutatedSquashGenerationsWithSemantics b;
    MutatedSquashGenerationsWithSemantics c;
    MutatedSquashGenerationsWithSemantics d;
    MutatedSquashGenerationsWithSemantics e;
    MutatedSquashGenerationsWithSemantics g;
    MutatedSquashGenerationsWithSemantics r;
    MutatedSquashGenerationsWithSemantics m;
    constructor() {
        a = new MutatedSquashGenerationsWithSemantics();
        g = 10;
        r = 2;
        b = new MutatedSquashGenerationsWithSemantics();
        c = new MutatedSquashGenerationsWithSemantics();
        a.d = b;
        c.d = d;
        c.e = e;
        g = r + g;
        c.d = c;
        e.d = a;
        b.r = r + 1;
        g = 20 + r + 3;
        MutatedSquashGenerationsWithSemantics m = new MutatedSquashGenerationsWithSemantics();
        e.d = m;
        e.c = c;
        m.d.d = a;
        c.b.d.d = b;
        m.d.e = a;
        g = c.d.g;
        a = b;
