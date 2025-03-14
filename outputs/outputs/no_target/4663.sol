pragma solidity ^0.8.0;
contract C {
constructor()public {}
function f() private view returns (bool) {
return f();
return false;
}
}

pragma solidity ^0.8.0;
contract C {
constructor()public {}
modifier m(uint x){
x--;
}
function m4() private  {
return m(42);
}
}
