pragma solidity ^0.8.0;
contract A {
address a;
constructor()   {
 a = this;
}
}

pragma solidity ^0.8.0;
contract A {
address public a;
constructor (address _a) {
    a = _a;
}
address public c;
}
