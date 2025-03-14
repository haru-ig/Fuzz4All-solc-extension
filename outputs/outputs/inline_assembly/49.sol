pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    constructor() {
        _incrementNumberB();
        _incrementNumberB();
    }

    function _incrementNumberB() internal {
        _number += 1;
    }
    function increaseNumberOfBytes() public {
        uint256 newByteCount = _number.add(1);

        assembly{
          %numberCopy := 160
          store(sub(_numberCopy,1),_number)
        }
    }
}
