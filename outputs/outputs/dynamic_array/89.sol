pragma solidity ^0.8.0;
contract C is A {
    uint [] fArray;
    uint256[] bArray;
    uint256[] bArray2;
    uint256[] bArray1;
}
contract D is C {
}
A a;
C c;
D.fArray = [7, 6, 9, 8];
D d;



pragma solidity ^0.8.0;
contract C {
    uint256[] a;
}
C c;
C.a = new uint256[](1);

A a;
C c;

pragma solidity ^0.8.0;
contract A {
    uint[] a;
}
uint256 b;
pragma solidity ^0.8.0;
contract C {
    A a;
}
C c;
A a;
c.a = [2,3];
a = c;


A a;
C c;
a = c;

a = 1;
a = 1;
a = 1;
a = 1;
a = 1;
uint256[] a;
pragma solidity ^0.8.0;
contract A {
    uint[] a;
}
uint256[] b;
A a;
C c;
uint256[] memory a;
A a;
c.a = a;

uint256[] a;
A a;
C c;
a = b;

A a;
C c;
c.a = new uint256[](1);
a = c.a;
