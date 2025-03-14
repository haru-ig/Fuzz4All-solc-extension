pragma solidity ^0.8.0;
contract Test5 {
    mapping(bytes2 => bool) b555;
    mapping(bytes3 => bool) b555b555;
    uint128 m0;
    mapping(bytes3 => bool) b555;
    uint128 m0;
    uint128 m1;
    uint128 m2;
    uint128 m3;
    uint128 m4;
    mapping(address => bool) b;
    mapping(bytes4 => bool) b4;
    mapping(address => address) address1;
    mapping(address => address) address2;
    bytes2 value1;
    bytes3 value2;
    mapping(address => bytes2) e8;
    mapping(address => e) e;
    mapping(address => bytes3) value3;
    mapping(address => mapping(address => uint)) address1Map;
    mapping(address => mapping(address => bytes3)) address1Map2;
    mapping(address => address[8]) i81634;
    mapping(address => address) address1;
    mapping(address => address) address2;
    mapping(address => address) address3;
    mapping(address => address) address4;
    mapping(address => uint256) u2561;
    mapping(address => uint256) u2562;
    mapping(address => uint256) u2563;
    mapping(address => uint224) uint1635;
}


pragma solidity ^0.8.0;
contract Test_Address {
    mapping(address => bool) b;
    constructor () {
        b[(address(0), 1)] = true;
    }
}
contract Test_Address {
  mapping(address => bool) b;
  constructor () {
    b[(address(1, 1), 1)] = true;
    b[(1, address(0), 1)] = true;
  }
}
contract Test_Address {
  mapping(address => address) b;
  constructor () {
    b[(address(0), 0)] = address(0);
    b[(1, address(0), 1)] = address(0);
  }
}
contract Test_Address {
    mapping(address => bool) b6;
    constructor () {
        b6[(address(0), address(0), 1)] = true;
    }
}
contract Test_Address {
    mapping(address => bool) b6;
    constructor () {
