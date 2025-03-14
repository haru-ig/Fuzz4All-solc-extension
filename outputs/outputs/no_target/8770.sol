pragma solidity ^0.8.0;
contract EquivalentABIv1AbiSemanticallyEquivalentInterface {
    function mintA() public { }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08AbiVersionedInterface {
    constructor(uint) public { }
}

contract NonEquivalentAbiInterface {
    mapping(address => uint) private m;
    function nonEquivalent(uint, bool) public { m[msg.sender] += 1; }
    function doEquivalent(uint) public nonEquivalent(0, true) returns (address) { return m[msg.sender]; }
    function doEquivalent() public nonEquivalent(0, true) returns (address) { return m[msg.sender]; }

}
pragma solidity ^0.8.0;
contract EquivalentABIv08AbiVersion0Interface {
    constructor(uint) public { }
    function nonEquivalent(uint, bool) public { }
    function doEquivalent(uint) public nonEquivalent(0, true) { }
    function doEquivalent() public nonEquivalent(0, true) { }
}
contract EquivalentABIv08Interface {
   function mintA() public { }
   function mintB() public { }
}
contract CodeWithAbi {
  address public equivalent_interface;

  constructor(address _interface) public {
    equivalent_interface = _interface;
  }

  function doA() public {
    EquivalentABIv08AbiVersionedInterface(equivalent_interface).mintA.value(0)();
  }

  function doB() public returns (address) {
    EquivalentABIv08AbiSemanticallyEquivalentInterface(equivalent_interface).mintA.value(0)();
    return (equivalent_interface);
  }

}
