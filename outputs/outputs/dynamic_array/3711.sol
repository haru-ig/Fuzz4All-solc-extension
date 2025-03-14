pragma solidity ^0.8.0;
contract D {
    uint storage a;

    constructor() {}

    function g() public {
      a += 1;
    }

    function h() public {
        delete storage a;
    }
}
