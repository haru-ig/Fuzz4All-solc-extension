pragma solidity ^0.8.0;
library Mutater11 {
    function setReturnAddress11(address _address) internal {
        returnAddress11 = _address;
    }
    function setReturnAddress10(address _address) internal {
        returnAddress10 = _address;
    }
    function setReturnAddress12(address _address) internal {
        returnAddress12 = _address;
    }
    address internal returnAddress11;
    address internal returnAddress10;
    address internal returnAddress12;
}
 pragma solidity ^0.8.0;
 contract Caller {
    Mutater12 public mutater12;
    function callme(address _address) public {
        mutater12.setReturnAddress12(_address);
    }
 }
