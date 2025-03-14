pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample9 {
    struct MixedContacts {
        uint _x;
    mapping(uint => uint256) _y;
    }
    function main(MixedContacts memory y) public {
        y._x += 1;
    }
}
#pragma version 0.8.99
pragma experimental ABIEncoderV2;
contract MixedContactsExample10 {
    struct MixedContacts {
      mapping(uint => uint256) internal _y;
      uint internal _x;
      constructor () {
        _x = 0;
      }
    }
    function main(MixedContacts memory y) public {
      _x += 1;
    }
}
#pragma version 0.8.99
pragma experimental ABIEncoderV2;
contract MixedContactsExample11 {
    struct MixedContacts {
      mapping(uint => uint256) internal _y;
      uint internal _x;
      constructor () {
        _x = 0;
        mapping(uint => uint256) memory empty_y;
        _y = empty_y;
      }
    }
    function main(MixedContacts memory y) public {
      _x += 1;
    }
}
#pragma version 0.8.99
pragma experimental ABIEncoderV2;
contract MixedContactsExample12 {
    struct MixedContacts {
      uint _x;
      mapping(uint => uint256) internal _y;
      uint internal _z;
      uint internal _w;
    }
    function main(MixedContacts memory y) public {
      y._z += 1;
      y._w = 2;
      _x += 3;
    }
}
#pragma version 0.8.99
pragma experimental ABIEncoderV2;
contract MixedContactsExample13 {
    struct MixedContacts {
      uint _x;
      mapping(uint => uint256) internal _y;
      uint internal _z;
      uint internal _w;
    }
    function main(MixedContacts memory y) public {
        y._z += 1;
        y._w = 2;
        y._y[42] + y._x * 2;
    }
}
