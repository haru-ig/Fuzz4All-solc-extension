pragma solidity ^0.8.0;
contract Test30005 {
    uint32 public aFirst;
    uint32 public aSecond;
    uint32 public aThird;
    constructor() public {
        aThird = 100;
        emit Log();
    }

    function DoStuff() public payable {
        aThird = 9;
        emit Log();
    }

    fallback() external payable {
        aSecond = 6;
        emit Log();
    }

    event Log();
}

contract Test30001Storage {
    uint32 public a;
    constructor () public {
        a = 1;
    }

    fallback () public {
        a = 2;
    }

    struct X {
        uint32 f;
        uint32 g;
    }

    function f () public {
        uint32 i = 3;
        X storage k = storage();
        require (k.f == 2);
    }

    fallback () public {
        a = 4;
        require (a == 1);
    }

    fallback (uint32 b) fallback() public {
        a = 5;
        a |= b;
        require (a == 5);
    }

    fallback (address add) fallback() public {
        a = 6;
        a = add;
        require (a == 6);
    }

}

contract Test30002Storage {
    uint32 public a;

    constructor () public {
        assembly {
          a := 5 ;
        }
    }

    fallback () public {
        a = 2;
    }

    struct X {
        uint32 f;
    }

    function f () external {
        uint32 i = 3;
        X storage k = storage();
        require (k.f == 2);
    }

    fallback () public {
        a = 4;
    }

    fallback (uint32 b) fallback() public {
        a = 5;
        a |= b;
        require (a == 5);
    }

    fallback (address add) fallback
