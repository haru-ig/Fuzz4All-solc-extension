pragma solidity ^0.8.0;
contract A {
    event MyEvent(string message);
    struct SomeData {
        uint8 m;
    }

    function f(uint d, bytes memory c) public {
      emit MyEvent(c);
    }
}
pragma solidity 0.6.10;
contract B is A {
    constructor(bytes memory a) public {
        uint d;
        assembly {
            d := mload(a)
        }
        bytes memory a_from_d = abi.encodePacked(d);
        A.f(0, a_from_d);
        A.f(1, a);
        A.f(2, abi.encodePacked(b));
    }
}
