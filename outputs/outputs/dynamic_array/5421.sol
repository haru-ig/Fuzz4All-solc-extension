pragma solidity ^0.8.0;
contract Test38 {
    event logEvent(uint foo);
    function mutated7(uint x) public {
        uint y;
    }
}
pragma solidity ^0.8.0;
contract Test39 {
    event logEvent(uint foo);
    function mutated8(uint x) public {
    bytes[] memory values = new bytes[](2);
    values.length--;
    logEvent(x);
    }
}
