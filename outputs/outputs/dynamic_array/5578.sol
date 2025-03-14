pragma solidity ^0.8.0;
contract Test68 {
    function x() public {
        uint[] memory a = new uint[](3);
        a[2] = uint(1);
    }
}

pragma solidity ^0.8.0;
  contract Test {
    uint[] public myarray;
    function f() public {
        myarray = new uint[](3);
    }
    function x(uint i) public {
        uint j = uint(100);
        uint m = i == 3? uint(2) : 0;
        myarray[2] = j;
    }
    function h() public {
        uint[] memory m = new uint[](80);
    }
    function g() public {

        uint[] memory n = myarray;
        myarray = new uint[](8);
        myarray[0] = n[0];
        uint x = myarray[2];
        uint y = myarray[3];
        uint z = n[1];
    }
    function h() public {
        uint[] memory m = myarray;
        uint j = m[2];
        myarray[2] = m[1];
        myarray[1] = j;
        return bool(j == bool(myarray[1] <= myarray[2]));
    }
    function f() public {
        myarray = uint[](0);
    }
}
