pragma solidity ^0.8.0;
contract A is I {
   uint private data;
}
pragma solidity ^0.8.0;
contract B is A {
   address private data;
}
pragma solidity ^0.8.0;
contract C is A, B {
   uint public data;
}
pragma solidity ^0.8.0;
contract D {
   uint public data;
}
uint I = 15;
uint[] I = [4, 9];
uint y = 3;
uint[] y = new uint[](2);
uint[2] x = [1, 2];


abstract contract Context {

    function _msgSender() internal view virtual returns (address sender) {
        return (msg.sender);
    }
}
