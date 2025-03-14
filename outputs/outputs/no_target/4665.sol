pragma solidity ^0.8.0;
contract C {
function f(uint256 _i) public {
assert((C(0)).f(_i));
}
}
pragma solidity ^0.8.0;

contract C {
constructor(uint256 _i)public {
assert((C(0)).f(_i));
}
function f(uint256 _i) public override {
assert((C(0)).f(_i));
}
}

pragma solidity ^0.8.0;
contract C {
constructor()public {}
}
pragma solidity ^0.8.0;
contract C {
constructor(uint256 _i)public {
assert((C(0)).f(_i));
}
function f(uint256 _i) public {
assert((C(0)).f(_i));
}
}
pragma solidity ^0.8.0;
contract C {
constructor()public {}
function f(uint256 _i) public {
assert((C(0)).f(_i));
}
}
pragma solidity ^0.8.0;
contract C1 is C {
constructor(uint256 _i)public {
assert((C1(0)).f(_i));
}
constructor(address _address, uint256 _i)public {
assert((C(0)).f(_i));
}
}
pragma solidity ^0.8.0;
contract C2 is C1 {
constructor(uint256 _i)public {
assert((C(0)).f(_i));
}
function f(uint256 _i) public view {
assert((C1(0)).f(_i));
}
}
