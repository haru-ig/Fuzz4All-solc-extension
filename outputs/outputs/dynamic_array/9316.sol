pragma solidity ^0.8.0;
contract Arrays {
     uint constant N = 10;
     uint[N] memory c;
     uint[] b;
}

pragma solidity ^0.8.0;
contract Arrays {
     uint constant N = 100;
     uint[N] memory c;
     uint[2*N] memory f;
}

pragma solidity ^0.8.0;
contract Arrays {
     uint constant N = uint256(-1);
     uint[N] memory c;
     uint[2*N] memory f;
}
