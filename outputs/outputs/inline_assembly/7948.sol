pragma solidity ^0.8.0;
contract L54Return4 {
    uint _x;
    uint _y;
    function sneaky() public returns(uint, uint, uint) {
       if (true) {
           return (_x, _y, 0);
       }
    }
}

contract L16MultipleParams1 {

    uint[] public arr;
    function sneaky() public {
        uint i = 0;
        for(i; i < 3; i++) {
            arr[i] = i + 1;
        }
    }

}

contract L86MultipleParams2 {
    uint[] public arr;
    function sneaky() public {
        for(uint i = 0; i < 3; i++) {
            arr[i] = i + 1;
        }
    }
}

contract L99MultipleParams3 {
    uint a;
    function sneaky() public {
       a = 10;
    }
}
