pragma solidity ^0.8.0;
contract C1 {
address public e;
constructor(address a) {
 c = a;
 assert(b == c);
}
address public c;
address public b;
}

pragma solidity ^0.8.0;
contract C2 {
address public e;
constructor(address a) {
 c = a;
 abi.encode(a, c);
}
address public c;
} */
pragma solidity ^0.8.0;
contract C3 {
address public e;
constructor(address a) {
 c = a;
 abi.decode(abi.encode(a, c), (address, address));
}
address public c;
}


contract C4 {
address public e;
constructor(address a) {
 c = a;
 abi.encodePacked(a, c);
}
address public c;
}

pragma solidity ^0.8.0;
contract C5 {
address public e;
constructor(address a) {
 c = a;
 abi.encode([a, c]);
}
address public c;
}

pragma solidity ^0.8.0;
contract C6 {
address public e;
constructor(address a) {
 c = a;
 abi.encodeWithSignature("transfer(address,uint256)", a,7);
}
address public c;
}
