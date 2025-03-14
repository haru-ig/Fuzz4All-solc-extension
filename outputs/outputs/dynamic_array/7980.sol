pragma solidity ^0.8.0;
contract Test40 {
    address[] public arr;
    address[] internal addressArray;
    constructor(){
        addressArray = new address[](0);
        address[] memory b;
        uint counter = 0;
        for (uint index = 0; index < 12; ++index) {
            b.push(address(0xffffffffffffffffffffffffff));
        }
    }

    function modify(address[] memory b) public {
        addressArray[counter++] = address(0xffffffffffffffffffffffffff);
        b[1] = address(0xffffffffffffffffffffffffff);
    }
}




contract Test5 {
    constructor() {
      contract c is Test39 {
          uint x = c.modifyArr2();
      }
    }
}
