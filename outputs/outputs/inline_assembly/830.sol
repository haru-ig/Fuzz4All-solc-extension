pragma solidity ^0.8.0;
contract Mutator{
    struct MyStructure {
      uint256 x;
}
    bytes32 a;
    bytes32 b;
    MyStructure storage mem;
    bool internal stopped = false;
    function stop() public {
        stopped = true;
    }
    modifier whileNotStopped {
        require(!stopped, "Contract is stopped");
        _;
    }
    modifier onlyWhileNotStopped {
        require(!stopped, "Contract has already been stopped!");
        _;
    }
    function Increment() public whileNotStopped onlyWhileNotStopped{
        uint256 temp;
        assembly {
            temp := mload(add(a,0x20))
            mstore(add(a,0x20), add(temp, 0x1))
        }

    }
    function IncrementMore() public whileNotStopped onlyWhileNotStopped {
        uint256 temp = (mem.x > 0)? mem.x-1 : 0;
        assembly {
            temp := mload(mload(add(a,0x20)))
            mstore(mload(add(a,0x20)), add(temp, 0x2))
        }
        mem.x = (mem.x + temp) + mem.x;
        mem.y = temp;
    }
}
