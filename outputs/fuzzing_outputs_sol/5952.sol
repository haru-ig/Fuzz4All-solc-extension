pragma solidity ^0.8.0;
contract Mutated {
    function getNewNumber() pure public returns (uint){
        uint x = (uint((new uint)[2])); uint y = x; return (x + y);
    }
}

pragma solidity ^0.8.0;
contract Getter {
    function retrieve(address _addr) public view returns (bytes memory) {
      bytes memory data;
      (bool success, data) = _addr.call{value: msg.value}(""); assembly {
        if(zero(data)) { revert(add(data, 32), mload(data), mload(add(data, 32))) } } }
}
