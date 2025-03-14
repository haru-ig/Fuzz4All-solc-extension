pragma solidity ^0.8.0;
library ReceiverLibrary {
    function mutate(uint counter, uint32 value) internal pure {
        int32 c;
        c = int32(counter);
        c = 10;
    }
}
pragma solidity ^0.8.0;
contract Caller {
    address payable fallback;
    function mutate(bytes32 expected) public {
        uint32 memory myUint = 1;
        myUint = 100;
        fallback = payable(caller());
    }
}
