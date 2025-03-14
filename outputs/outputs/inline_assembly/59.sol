pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    constructor() {
      _decrementNumberB();
      _number += 1;
    }
    function _decrementNumberB() internal {
      _number -= 1;
    }
}
contract A {
    function() external payable {}
}
#pragma experimental ABIEncoderV2;
contract A {
    struct Auction {}
    event AuctionCreated(A auction, string name);
    constructor(string memory name) {
      emit AuctionCreated(new Auction(), name);
    }
    function () external payable {}
}

contract Test {
    function test(uint256 value) public pure returns (uint256) {
        return 2**18 - value;
    }
}
pragma solidity ^0.8.0;
contract B {
    uint256 private _data;
    mapping(uint256 => bool) private _storageMapping;

    uint256 _increment() public {
        _data++;
        _storageMapping[_increment()] = true;
    }

    uint256 _decrement() public {
       _data--;
    }

    uint256 _incrementB() public {
        _increment();
    }

    uint256 _decrementB() public {
        _decrement();
    }

    uint256 _incrementC() public {
        _incrementB();
    }

    uint256 decrement() public {
        _data--;
    }

    uint256 _decrementC() public {
        _decrementB();
    }

    uint256 _incrementD() public {
        _incrementC();
    }

    uint256 _incrementE() public {
        _incrementD();
    }

    uint256 _decrementE() public {
        _decrementC();
    }

    uint256 _incrementF() public {
        _incrementE();
    }

    uint256
