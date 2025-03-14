pragma solidity ^0.8.0;
contract Mutations {
  function main() public {
    address[] memory addresses1 = new address[](3);
    address[] memory addresses2 = address(uint160(100)).split('0x')[1].split(':')[0].split('0x')[1].split(':')[0].split(':');
    address[] memory addresses3 = new address[](3);
    Mutations_semanticallyEq2(address(addresses1[1]), constant1, constant2, constant3, constant4);
    Mutations_semanticallyEq3(addresses1, constant1, address(0x0), constant2, constant3, constant4);
    Mutations_semanticallyEq4(address(addresses1[2]), constant1, constant2, constant3, address(0x0));
    Mutations_semanticallyEq5(address(addresses1[0]), constant1, constant2, constant3, constant4);
    Mutations_semanticallyEq6(constant1, constant2, constant3, constant4);
    Mutations_semanticallyEq7(constant1, constant2, constant3, constant4);
    address[] memory addresses4 = address[](new address[](2));
    Mutations_semanticallyEq1(address(addresses4[1]), 1n, constant2);
  }
}
