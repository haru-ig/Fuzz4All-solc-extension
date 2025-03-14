pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract AGeneric {
    function A_incrementNumberAGeneric(uint8 _number) public pure returns (uint8 newNumber){
      newNumber = _number + 1;
    }
}
contract CGeneric {
    function C_incrementNumberCGeneric(uint8 _number) public pure returns (uint8 newNumber){
      newNumber = _number + 1;
    }
}
contract DGeneric {
    function D_incrementNumberDGeneric(uint8 _number) public pure returns (uint8 newNumber){
      newNumber = _number + 1;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface A {
    function A_incrementNumberA(uint8 _number) public returns (uint8 newNumber);
}
interface C {
    function C_incrementNumberC(uint8 _number) public returns (uint8 newNumber);
}
interface D {
    function D_incrementNumberD(uint8 _number) public returns (uint8 newNumber);
}

pragma solidity >=0.8.0;
pragma experimental ABIEncoderV2;
interface AGeneric {
    function A_incrementNumberAGeneric(uint8 _number) public pure returns (uint8 newNumber);
}
interface CGeneric {
    function C_incrementNumberCGeneric(uint8 _number) public pure returns (uint8 newNumber);
}
interface DGeneric {
    function D_incrementNumberDGeneric(uint8 _number) public pure returns (uint8 newNumber);
}







 contract AProxy {
    receive() external payable {}
    function proxyFor(address _proxy, address _interface) external returns (address);
}

contract ProxyDemo is AProxy {
